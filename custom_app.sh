
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

        # Replace the invoke-interface by invoke-virtual. IccCard is not an Interface but an Abstract Class.
        find $tempSmaliDir -name "*\.smali" | xargs sed -i 's#invoke-interface\(.*Lcom/android/internal/telephony/IccCard;->\)#invoke-virtual\1#g'
fi

