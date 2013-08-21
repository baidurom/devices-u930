.class public Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;
.super Landroid/preference/PreferenceActivity;
.source "FmRadioSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$1;,
        Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;,
        Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;
    }
.end annotation


# static fields
.field private static ACTION_END_FMSETTINGS:Ljava/lang/String; = null

.field public static final FM_PREF_AF_ENABLED:Ljava/lang/String; = "fm_pref_af_enabled"

.field public static final FM_PREF_AUDIO_MODE:Ljava/lang/String; = "fm_pref_audio_mode"

.field public static final FM_PREF_AUDIO_PATH:Ljava/lang/String; = "fm_pref_audio_path"

.field public static final FM_PREF_AUTO_SEARCH:Ljava/lang/String; = "fm_pref_auto_search"

.field public static final FM_PREF_DEEMPHASIS:Ljava/lang/String; = "fm_pref_deemphasis"

.field public static final FM_PREF_ENABLE:Ljava/lang/String; = "fm_pref_enabled"

.field public static final FM_PREF_LIVE_POLLING:Ljava/lang/String; = "fm_pref_live_polling"

.field public static final FM_PREF_LIVE_POLL_INT:Ljava/lang/String; = "fm_pref_live_polling_interval"

.field public static final FM_PREF_NFL_MODE:Ljava/lang/String; = "fm_pref_nfl_mode"

.field public static final FM_PREF_RDS_ENABLED:Ljava/lang/String; = "fm_pref_rds_enabled_2"

.field public static final FM_PREF_SCAN_STEP:Ljava/lang/String; = "fm_pref_scan_step"

.field public static final FM_PREF_SNR_THRESHOLD:Ljava/lang/String; = "fm_pref_snr_thres"

.field public static final FM_PREF_WORLD_REGION:Ljava/lang/String; = "fm_pref_world_region"

.field public static final FM_RDS_MODE_OFF_VALUE:Ljava/lang/String; = "0"

.field public static final FM_RDS_MODE_ON_VALUE:Ljava/lang/String; = "2"

.field private static MOVE_BACKGROUND_FROMSETTING:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "RADIO SETTINGS"


# instance fields
.field AFPreference:Landroid/preference/Preference;

.field RDSModePreference:Landroid/preference/Preference;

.field private mEndSettingsReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "zte.com.cn.fm.ACTION_END_FMSETTINGS"

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->ACTION_END_FMSETTINGS:Ljava/lang/String;

    .line 95
    const-string v0, "zte.com.cn.fm.MOVE_BACKGROUND_FROM_SETTING"

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->MOVE_BACKGROUND_FROMSETTING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->mEndSettingsReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;

    .line 100
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->ACTION_END_FMSETTINGS:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const-string v2, "RADIO SETTINGS"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/high16 v2, 0x7f04

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->addPreferencesFromResource(I)V

    .line 112
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "fm_pref_audio_mode"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 113
    .local v1, p:Landroid/preference/Preference;
    new-instance v2, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;

    invoke-direct {v2, p0, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$1;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 114
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "fm_pref_audio_path"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 115
    new-instance v2, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;

    invoke-direct {v2, p0, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$1;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 121
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "fm_pref_auto_search"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 122
    .local v0, autoSearchPreference:Landroid/preference/Preference;
    new-instance v2, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;

    invoke-direct {v2, p0, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$CyclePreferenceClickListener;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$1;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 131
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 158
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->mEndSettingsReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 162
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->finish()V

    .line 163
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->MOVE_BACKGROUND_FROMSETTING:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, moveToBackground:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 169
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fm_pref_rds_enabled_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "RADIO SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "RADIO SETTINGS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Landroid/preference/ListPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    .line 174
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 145
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 147
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->mEndSettingsReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;

    if-nez v2, :cond_0

    .line 148
    new-instance v2, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;)V

    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->mEndSettingsReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;

    .line 149
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, commandFilter:Landroid/content/IntentFilter;
    sget-object v2, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->ACTION_END_FMSETTINGS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->mEndSettingsReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 153
    .local v1, intent:Landroid/content/Intent;
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 179
    const-string v1, "fm_pref_rds_enabled_2"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const-string v1, "fm_pref_rds_enabled_2"

    const-string v2, "NULL"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, result:Ljava/lang/String;
    const-string v1, "NULL"

    if-eq v0, v1, :cond_0

    .line 182
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->AFPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 191
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v0       #result:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->AFPreference:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 187
    .end local v0           #result:Ljava/lang/String;
    :cond_2
    const-string v1, "fm_pref_auto_search"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->finish()V

    goto :goto_0
.end method
