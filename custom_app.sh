
apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "Phone" ];then
	echo ">>> in custom_app for Phone"
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/%%//g'
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/ %[ )\%]/ /g'
	find $tempSmaliDir -name "*.xml" | xargs sed -i 's/\(%[0-9]\$[ds]\)%/\1/g'

        # Delete the updateCallNotifierRegistrationsAfterRadioTechnologyChange()V method in CallNotifier.smali
        # We will add a new modified updateCallNotifierRegistrationsAfterRadioTechnologyChange()V method into CallNotifier.smali
        sed -i -e "/^\.method.*updateCallNotifierRegistrationsAfterRadioTechnologyChange()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/phone/CallNotifier.smali
		
	# Delete the startRecording(ILjava/lang/String;)Ljava/lang/String method in Recorder.smali
        # We will add a new modified startRecording(ILjava/lang/String;)Ljava/lang/String method into Recorder.smali
        sed -i -e "/^\.method.*startRecording(ILjava\/lang\/String;)Ljava\/lang\/String/,/^\.end method/d" $tempSmaliDir/smali/com/android/phone/Recorder.smali
		
        # Replace the invoke-interface by invoke-virtual. IccCard is not an Interface but an Abstract Class.
        find $tempSmaliDir -name "*\.smali" | xargs sed -i 's#invoke-interface\(.*Lcom/android/internal/telephony/IccCard;->\)#invoke-virtual\1#g'

elif [ "$apkBaseName" = "Settings" ];then
	echo ">>> in custom_app for Settings"
	if [ -f $tempSmaliDir/res/xml/security_settings_picker.xml ];then
		echo ">>> delete unlock_set_baidu_slide line in $tempSmaliDir/res/xml/security_settings_picker.xml"
		sed -i '/unlock_set_baidu_slide/d' $tempSmaliDir/res/xml/security_settings_picker.xml
	fi

        # Replace the invoke-interface by invoke-virtual. IccCard is not an Interface but an Abstract Class.
        find $tempSmaliDir -name "*\.smali" | xargs sed -i 's#invoke-interface\(.*Lcom/android/internal/telephony/IccCard;->\)#invoke-virtual\1#g'

        # Remove the Official Verify Preference.
        sed -i -e "/^\.method.*setOfficialVerifyPreference()V/,/^\.end method/d" $tempSmaliDir/smali/com/android/settings/DeviceInfoSettings.smali

elif [ "$apkBaseName" = "Contacts" ];then
	echo ">>> in custom_app for Contacts"

	# Delete the buildWhere()Ljava/lang/String; method in SimCardUtils$SIMContact.smali
        # We will add a new modified buildWhere()Ljava/lang/String; method into SimCardUtils$SIMContact.smali
        sed -i -e "/^\.method.*buildWhere()Ljava\/lang\/String/,/^\.end method/d" $tempSmaliDir/smali/com/baidu/contacts/util/SimCardUtils\$SIMContact.smali

        # Delete the doInBackground([Ljava/lang/Void;)Ljava/lang/Void; method in ContactsMultiDeletionFragment$ProcessDelete.smali
        # We will add a new modified doInBackground([Ljava/lang/Void;)Ljava/lang/Void; method into ContactsMultiDeletionFragment$ProcessDelete.smali
        sed -i -e "/^\.method.*doInBackground(\[Ljava\/lang\/Void;)Ljava\/lang\/Void/,/^\.end method/d" $tempSmaliDir/smali/com/baidu/contacts/list/pick/ContactsMultiDeletionFragment\$ProcessDelete.smali

        # Delete the deleteSimContact(Landroid/content/ContentResolver;Lcom/baidu/contacts/util/SimCardUtils$SIMContact;)I method in SubContactsUtils.smali
        # We will add a new modified deleteSimContact(Landroid/content/ContentResolver;Lcom/baidu/contacts/util/SimCardUtils$SIMContact;)I method into SubContactsUtils.smali
        sed -i -e "/^\.method.*deleteSimContact(Landroid\/content\/ContentResolver;Lcom\/baidu\/contacts\/util\/SimCardUtils\$SIMContact;)I/,/^\.end method/d" $tempSmaliDir/smali/com/baidu/contacts/SubContactsUtils.smali

fi

