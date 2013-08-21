.class public Lcom/broadcom/bt/app/fm/rx/FmRadio;
.super Landroid/app/Activity;
.source "FmRadio.java"

# interfaces
.implements Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;,
        Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;,
        Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;
    }
.end annotation


# static fields
.field private static ACTION_END_FMSETTINGS:Ljava/lang/String; = null

.field private static ACTION_SETFMVOL:Ljava/lang/String; = null

.field private static final ALARMCMDNAME:Ljava/lang/String; = "alarmingpause"

.field private static final CMDNAME:Ljava/lang/String; = "command"

.field private static final CMDPAUSE:Ljava/lang/String; = "pause"

.field private static final CMDPLAY:Ljava/lang/String; = "play"

.field private static final DEFAULT_FREQUENCY:I = 0x226a

.field private static final DIALOG_RENAME:I = 0x1

.field private static final END_FM:Ljava/lang/String; = "zte.com.cn.fm.ACTION_END"

.field private static final FM_CLOSE_MSG:I = 0x1e

.field private static final FM_PAUSE_MSG:I = 0x1f

.field private static final FM_RESUME_MSG:I = 0x20

.field private static final FM_SET_AUDIOPATH_DELAY_MSG:I = 0x24

.field private static final FM_SET_FMVOLUME_MSG:I = 0x23

.field private static final FM_STATE_PREPARE:I = 0x0

.field private static final FM_STATE_READY:I = 0x1

.field private static final FM_UNSET_AUDIOPATH_DELAY_MSG:I = 0x25

.field private static final GUI_UPDATE_MSG_AF_STATUS:I = 0x6

.field private static final GUI_UPDATE_MSG_FREQ_STATUS:I = 0x3

.field private static final GUI_UPDATE_MSG_MUTE_STATUS:I = 0x2

.field private static final GUI_UPDATE_MSG_RDS_DATA:I = 0x7

.field private static final GUI_UPDATE_MSG_RDS_STATUS:I = 0x5

.field private static final GUI_UPDATE_MSG_SIGNAL_STATUS:I = 0x1

.field private static final GUI_UPDATE_MSG_WORLD_STATUS:I = 0x4

.field private static final MENU_CH_CANCEL:I = 0x3

.field private static final MENU_CH_CLEAR:I = 0x2

.field private static final MENU_CH_RENAME:I = 0x4

.field private static final MENU_CH_SET:I = 0x1

.field private static final MOVE_BACKGROUND_FROMSETTING:Ljava/lang/String; = "zte.com.cn.fm.MOVE_BACKGROUND_FROM_SETTING"

.field private static final NFL_TIMER_EVENT:I = 0x15

.field private static final NUM_OF_CHANNELS:I = 0xc

.field private static final PROGRESSDIALOG_CLOSING:I = 0x3

.field private static final PROGRESSDIALOG_INIT:I = 0x1

.field private static final PROGRESSDIALOG_SEARCHING:I = 0x2

.field private static final SERVICECMD:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final SIGNAL_CHECK_AUTO_SEARCH_EVENTS:I = 0x16

.field private static final SIGNAL_CHECK_PENDING_EVENTS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "FmRxRadio"

.field private static final V:Z = true

.field private static final chlNamefreqPreferenceKey:Ljava/lang/String; = "channelname"

.field private static final freqPreferenceKey:Ljava/lang/String; = "channel"

.field private static final lastFreqPreferenceKey:Ljava/lang/String; = "last"

.field private static mLongPressChannel:I


# instance fields
.field private alertDialog:Landroid/app/AlertDialog;

.field private audioModeUpdatePending:Z

.field private audioPathUpdatePending:Z

.field private autoSearchIndex:I

.field delaySetAudioPathHandler:Landroid/os/Handler;

.field private fmSetSNRThresholdPending:Z

.field private fmVolumeUpdatepending:Z

.field private frequencyUpdatePending:Z

.field private isFirstIn:I

.field private isHeadSetPlug:Z

.field private isInAirplaneMode:Z

.field private isInSettings:Z

.field private livePollingUpdatePending:Z

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field mAudioManager:Landroid/media/AudioManager;

.field private mChannels:[I

.field private mChannelsName:[Ljava/lang/String;

.field private mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

.field private mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;

.field private mFrequency:I

.field private mFrequencyStep:I

.field private mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

.field private mInAutoSearching:Z

.field private mInBackground:Z

.field private mIsAutoSearchFail:Z

.field private mIsBackFromAutoSearch:Z

.field private mIsUpdateFreq:Z

.field private mMaxFreq:I

.field private mMediaStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMinFreq:I

.field private mNfl:I

.field mNotificationManager:Landroid/app/NotificationManager;

.field private mPendingAfMode:I

.field private mPendingAudioMode:I

.field private mPendingAudioPath:I

.field private mPendingDeemphasis:I

.field private mPendingFrequency:I

.field private mPendingLivePoll:Z

.field private mPendingLivePollinterval:I

.field private mPendingMute:Z

.field private mPendingNflEstimate:I

.field private mPendingRdsMode:I

.field private mPendingRdsType:I

.field private mPendingRegion:I

.field private mPendingScanMethod:I

.field private mPendingScanStep:I

.field private mPendingSearchDirection:I

.field private mPendingSnrThreshold:I

.field private mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

.field mPowerOffRadio:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mRdsProgramTypes:[Ljava/lang/String;

.field private mRenameView:Landroid/view/View;

.field private mSearchProgressDialog:Landroid/app/ProgressDialog;

.field private mSeekInProgress:Z

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

.field private mWorldRegion:I

.field private mplugAlertDialog:Landroid/app/AlertDialog;

.field private muteUpdatePending:Z

.field private nflEstimateUpdatePending:Z

.field private rdsModeUpdatePending:Z

.field private scanStepUpdatePending:Z

.field private shutdownPending:Z

.field private stationSearchUpdatePending:Z

.field protected viewUpdateHandler:Landroid/os/Handler;

.field private worldRegionUpdatePending:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const-string v0, "zte.com.cn.fm.ACTION_END_FMSETTINGS"

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->ACTION_END_FMSETTINGS:Ljava/lang/String;

    .line 121
    const-string v0, "com.broadcom.bt.app.fm.ACTION_SETFMVOL"

    sput-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->ACTION_SETFMVOL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0x226a

    const/16 v4, 0xc

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 128
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    .line 173
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    .line 174
    new-array v0, v4, [Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelsName:[Ljava/lang/String;

    .line 180
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mWorldRegion:I

    .line 182
    iput v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    .line 183
    const/16 v0, 0xa

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    .line 187
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 188
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 191
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    .line 192
    const/16 v0, 0x40

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    .line 193
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioMode:I

    .line 194
    const/4 v0, 0x2

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    .line 195
    iput v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 196
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    .line 197
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanStep:I

    .line 198
    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanMethod:I

    .line 199
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsMode:I

    .line 200
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsType:I

    .line 201
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAfMode:I

    .line 202
    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingNflEstimate:I

    .line 203
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    .line 204
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePoll:Z

    .line 205
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSnrThreshold:I

    .line 206
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePollinterval:I

    .line 212
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    .line 213
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->worldRegionUpdatePending:Z

    .line 214
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioModeUpdatePending:Z

    .line 215
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    .line 216
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    .line 217
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->muteUpdatePending:Z

    .line 218
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    .line 219
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->rdsModeUpdatePending:Z

    .line 220
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->nflEstimateUpdatePending:Z

    .line 221
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    .line 222
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->livePollingUpdatePending:Z

    .line 223
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmVolumeUpdatepending:Z

    .line 224
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmSetSNRThresholdPending:Z

    .line 227
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsAutoSearchFail:Z

    .line 228
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z

    .line 229
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsBackFromAutoSearch:Z

    .line 230
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsUpdateFreq:Z

    .line 232
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 233
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    .line 235
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I

    .line 237
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isFirstIn:I

    .line 238
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInAirplaneMode:Z

    .line 239
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetPlug:Z

    .line 250
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInBackground:Z

    .line 251
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInSettings:Z

    .line 252
    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->alertDialog:Landroid/app/AlertDialog;

    .line 254
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->delaySetAudioPathHandler:Landroid/os/Handler;

    .line 276
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 533
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMediaStateReceiver:Landroid/content/BroadcastReceiver;

    .line 1330
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    .line 2031
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInAirplaneMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInAirplaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isPhoneOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->ACTION_SETFMVOL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInBackground:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInSettings:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    return v0
.end method

.method static synthetic access$1302(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    return p1
.end method

.method static synthetic access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    return v0
.end method

.method static synthetic access$1502(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    return p1
.end method

.method static synthetic access$1600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->retryPendingCommands()V

    return-void
.end method

.method static synthetic access$1800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchPending()V

    return-void
.end method

.method static synthetic access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerDownSequence()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/fm/rx/FmRadio;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNfl:I

    return p1
.end method

.method static synthetic access$2100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    return v0
.end method

.method static synthetic access$2202(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    return p1
.end method

.method static synthetic access$2300(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateStationSearch(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I

    return v0
.end method

.method static synthetic access$2402(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I

    return p1
.end method

.method static synthetic access$2404(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I

    return v0
.end method

.method static synthetic access$2500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    return v0
.end method

.method static synthetic access$2602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsAutoSearchFail:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsAutoSearchFail:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsUpdateFreq:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsUpdateFreq:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearch(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mWorldRegion:I

    return p1
.end method

.method static synthetic access$3100(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->wiredHeadsetIsOn(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updatePhoneState(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stopSeekAll()V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z

    return v0
.end method

.method static synthetic access$502(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z

    return p1
.end method

.method static synthetic access$600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;)Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->receivehandler(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    return v0
.end method

.method static synthetic access$900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isFirstIn:I

    return v0
.end method

.method static synthetic access$902(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 109
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isFirstIn:I

    return p1
.end method

.method private autoSearch(Z)V
    .locals 4
    .parameter "isbegin"

    .prologue
    .line 2072
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wangdapeng autoSearch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    if-eqz p1, :cond_2

    .line 2074
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 2075
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 2076
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->clearChannel(I)V

    .line 2075
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2078
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    .line 2079
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    if-nez v1, :cond_1

    .line 2080
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateWorldRegion(Landroid/content/SharedPreferences;)V

    .line 2081
    :cond_1
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liying mMinFreq  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 2089
    .end local v0           #i:I
    :goto_1
    return-void

    .line 2084
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I

    .line 2086
    const/16 v1, 0x80

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    .line 2087
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateStationSearch(I)V

    goto :goto_1
.end method

.method private autoSearchPending()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2092
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z

    if-eqz v1, :cond_2

    .line 2093
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyGraphics(I)V

    .line 2094
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    if-eq v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v2, v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setSeekStatus(ZZ)V

    .line 2096
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateSearchChannelButton(II)V

    .line 2123
    :cond_1
    :goto_0
    return-void

    .line 2099
    :cond_2
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 2100
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-virtual {v1, v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateSearchChannelButton(II)V

    .line 2102
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannels()[I

    move-result-object v1

    aget v1, v1, v0

    if-eqz v1, :cond_3

    .line 2103
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->selectChannel(I)V

    .line 2104
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannels()[I

    move-result-object v1

    aget v1, v1, v0

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 2105
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannels()[I

    move-result-object v1

    aget v1, v1, v0

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    .line 2110
    :cond_3
    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I

    goto :goto_0

    .line 2112
    :cond_4
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsAutoSearchFail:Z

    if-eqz v1, :cond_5

    .line 2113
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsAutoSearchFail:Z

    .line 2114
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setFrequency(I)V

    goto :goto_0

    .line 2116
    :cond_5
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannels()[I

    move-result-object v1

    aget v1, v1, v0

    if-eqz v1, :cond_1

    .line 2117
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->selectChannel(I)V

    .line 2118
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannels()[I

    move-result-object v1

    aget v1, v1, v0

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 2119
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannels()[I

    move-result-object v1

    aget v0, v1, v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    goto :goto_0
.end method

.method private buttonSeekFrequencyDown()V
    .locals 3

    .prologue
    .line 1786
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonSeekFrequencyDown region: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 1790
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-nez v0, :cond_0

    .line 1791
    const/16 v0, 0x226a

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 1803
    :goto_0
    return-void

    .line 1793
    :cond_0
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    if-le v0, v1, :cond_2

    .line 1794
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_1

    .line 1795
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1801
    :goto_1
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    goto :goto_0

    .line 1797
    :cond_1
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    goto :goto_1

    .line 1799
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    goto :goto_1
.end method

.method private buttonSeekFrequencyUp()V
    .locals 3

    .prologue
    .line 1764
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buttonSeekFrequencyUp: region "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 1768
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-nez v0, :cond_0

    .line 1769
    const/16 v0, 0x226a

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 1781
    :goto_0
    return-void

    .line 1771
    :cond_0
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    if-ge v0, v1, :cond_2

    .line 1772
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_1

    .line 1773
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1779
    :goto_1
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    goto :goto_0

    .line 1775
    :cond_1
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    goto :goto_1

    .line 1777
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    goto :goto_1
.end method

.method private closeFMInput()V
    .locals 3

    .prologue
    .line 2249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2250
    .local v0, i:Landroid/content/Intent;
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2251
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->sendBroadcast(Landroid/content/Intent;)V

    .line 2252
    return-void
.end method

.method private closeSetting()V
    .locals 2

    .prologue
    .line 2261
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->ACTION_END_FMSETTINGS:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2262
    .local v0, endfmIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->sendBroadcast(Landroid/content/Intent;)V

    .line 2263
    return-void
.end method

.method private createRenameDlg(Ljava/lang/String;)V
    .locals 8
    .parameter "orChlName"

    .prologue
    .line 1212
    const-string v5, "FmRxRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createRenameDlg  start orChlName =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1215
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const/4 v3, 0x0

    .line 1217
    .local v3, renameDialog:Landroid/app/AlertDialog;
    const v5, 0x7f030005

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRenameView:Landroid/view/View;

    .line 1218
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRenameView:Landroid/view/View;

    const v6, 0x7f07002c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1219
    .local v1, mRenameEditText:Landroid/widget/EditText;
    move-object v2, p1

    .line 1220
    .local v2, nameStr:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1221
    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 1222
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f06007e

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRenameView:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;

    invoke-direct {v7, p0, v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Lcom/broadcom/bt/app/fm/rx/FmRadio$6;

    invoke-direct {v7, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$6;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 1246
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1247
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1249
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1250
    .local v4, window:Landroid/view/Window;
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1251
    return-void
.end method

.method private dismissErrorDlg()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->alertDialog:Landroid/app/AlertDialog;

    .line 1177
    :cond_0
    return-void
.end method

.method private displayErrorMessageAndExit(Ljava/lang/String;)V
    .locals 3
    .parameter "errorMessage"

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->delaySetAudioPathHandler:Landroid/os/Handler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1152
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1155
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    .line 1156
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->alertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    .line 1157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->alertDialog:Landroid/app/AlertDialog;

    .line 1159
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1160
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->alertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1161
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->alertDialog:Landroid/app/AlertDialog;

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/broadcom/bt/app/fm/rx/FmRadio$5;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$5;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1169
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1170
    return-void
.end method

.method private displayHeadsetPlugInMsg(Z)V
    .locals 2
    .parameter "isOn"

    .prologue
    const/4 v1, 0x1

    .line 1962
    if-nez p1, :cond_2

    .line 1964
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stopSeekAll()V

    .line 1965
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    .line 1966
    const-string v0, "fm_route=disabled"

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setParameters(Ljava/lang/String;)V

    .line 1967
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInBackground:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInSettings:Z

    if-nez v0, :cond_1

    .line 1968
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->closeSetting()V

    .line 1969
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->receivehandler(I)V

    .line 1991
    :cond_0
    :goto_0
    return-void

    .line 1971
    :cond_1
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->closeSetting()V

    .line 1972
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    .line 1973
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissErrorDlg()V

    .line 1974
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 1979
    :cond_2
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    .line 1980
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isFirstIn:I

    if-eqz v0, :cond_0

    .line 1984
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    if-ne v0, v1, :cond_4

    .line 1985
    const-string v0, "fm_route=fm_speaker"

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setParameters(Ljava/lang/String;)V

    .line 1988
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 1986
    :cond_4
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1987
    const-string v0, "fm_route=fm_headset"

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setParameters(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private final isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2238
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private final isPhoneOn()Z
    .locals 1

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    .line 2243
    const/4 v0, 0x0

    .line 2245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private killMusic()V
    .locals 3

    .prologue
    .line 2267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2268
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2269
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->sendBroadcast(Landroid/content/Intent;)V

    .line 2270
    return-void
.end method

.method private openFMInput()V
    .locals 3

    .prologue
    .line 2255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2256
    .local v0, i:Landroid/content/Intent;
    const-string v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2257
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->sendBroadcast(Landroid/content/Intent;)V

    .line 2258
    return-void
.end method

.method private powerDownSequence()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 634
    const-string v5, "FmRxRadio"

    const-string v6, "powerDownSequence()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iput-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    .line 638
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    .line 639
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioModeUpdatePending:Z

    .line 640
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->nflEstimateUpdatePending:Z

    .line 641
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    .line 642
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    .line 643
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->rdsModeUpdatePending:Z

    .line 644
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->livePollingUpdatePending:Z

    .line 645
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    .line 646
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmVolumeUpdatepending:Z

    .line 647
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmSetSNRThresholdPending:Z

    .line 651
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5}, Landroid/app/NotificationManager;->cancelAll()V

    .line 652
    iput v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isFirstIn:I

    .line 653
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v5}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOffRadio()I

    move-result v2

    .line 654
    .local v2, status:I
    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    .line 656
    iput-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    .line 657
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 658
    .local v0, alertDialog:Landroid/app/AlertDialog;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f060074

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\nStatus = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 659
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    check-cast v3, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 660
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    .line 669
    .end local v0           #alertDialog:Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return v3

    .line 664
    :cond_1
    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-eqz v4, :cond_0

    .line 665
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 666
    .local v1, e:Landroid/content/SharedPreferences$Editor;
    const-string v4, "last"

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 667
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private powerUpSequence()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 581
    const-string v3, "FmRxRadio"

    const-string v4, "powerUpSequence()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->showNotification()V

    .line 585
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 586
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    .line 587
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioModeUpdatePending:Z

    .line 589
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->nflEstimateUpdatePending:Z

    .line 590
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    .line 591
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    .line 592
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->rdsModeUpdatePending:Z

    .line 593
    iput-boolean v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmVolumeUpdatepending:Z

    .line 594
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->livePollingUpdatePending:Z

    .line 595
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    .line 596
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 597
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmSetSNRThresholdPending:Z

    .line 601
    const-string v3, "FmRxRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turning on radio... mFmReceiver = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; Softmute state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v3, :cond_0

    .line 603
    const-string v3, "FmRxRadio"

    const-string v4, "Invalid FM Receiver Proxy!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    .line 626
    :goto_0
    return-void

    .line 608
    :cond_0
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v4, 0x60

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v2

    .line 609
    .local v2, status:I
    const-string v3, "FmRxRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turn on radio status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-nez v2, :cond_1

    .line 614
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 615
    .local v1, msg:Landroid/os/Message;
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 616
    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 617
    iput v7, v1, Landroid/os/Message;->arg2:I

    .line 618
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 621
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f060075

    invoke-virtual {p0, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    .local v0, error:Ljava/lang/String;
    const-string v3, "FmRxRadio"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->displayErrorMessageAndExit(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private powerupComplete()V
    .locals 3

    .prologue
    .line 673
    const-string v0, "FmRxRadio"

    const-string v1, "powerupcomplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "last"

    const/16 v2, 0x226a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 675
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 676
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    .line 677
    return-void
.end method

.method private receivehandler(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 2128
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2129
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2130
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2131
    return-void
.end method

.method private retryPendingCommands()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 1088
    const-string v0, "FmRxRadio"

    const-string v1, "retryPendingCommands()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "retryPendingCommands() stationSearchUpdatePending=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->nflEstimateUpdatePending:Z

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateNflEstimate(Landroid/content/SharedPreferences;)V

    .line 1123
    :cond_0
    :goto_0
    return-void

    .line 1095
    :cond_1
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioModeUpdatePending:Z

    if-eqz v0, :cond_2

    .line 1096
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateAudioMode(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1097
    :cond_2
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    if-eqz v0, :cond_3

    .line 1098
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateAudioPath(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1099
    :cond_3
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmVolumeUpdatepending:Z

    if-eqz v0, :cond_4

    .line 1100
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFMVolume(I)V

    goto :goto_0

    .line 1103
    :cond_4
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    if-eqz v0, :cond_5

    .line 1104
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    goto :goto_0

    .line 1105
    :cond_5
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->muteUpdatePending:Z

    if-eqz v0, :cond_6

    .line 1106
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMuted(Z)V

    goto :goto_0

    .line 1107
    :cond_6
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    if-eqz v0, :cond_7

    .line 1108
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateScanStep(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1109
    :cond_7
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    if-eqz v0, :cond_8

    .line 1110
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateStationSearch(I)V

    goto :goto_0

    .line 1111
    :cond_8
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->rdsModeUpdatePending:Z

    if-eqz v0, :cond_9

    .line 1112
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateRdsMode(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1113
    :cond_9
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmSetSNRThresholdPending:Z

    if-eqz v0, :cond_a

    .line 1114
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateSetSNRThreshold(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1116
    :cond_a
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->livePollingUpdatePending:Z

    if-eqz v0, :cond_b

    .line 1117
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateLivePolling(Landroid/content/SharedPreferences;)V

    .line 1119
    :cond_b
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->worldRegionUpdatePending:Z

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateWorldRegion(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method private setParameters(Ljava/lang/String;)V
    .locals 3
    .parameter "keyValuePairs"

    .prologue
    .line 2273
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setParameters + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2275
    return-void
.end method

.method private showNotification()V
    .locals 21

    .prologue
    .line 2010
    const v7, 0x7f020020

    .line 2011
    .local v7, icon:I
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v14, 0x7f06

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2012
    .local v5, contentTitle:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " (%.02f MHz)"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4059

    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2013
    .local v10, tickerText:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 2014
    .local v11, when:J
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isPhoneOn()Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInAirplaneMode:Z

    if-eqz v13, :cond_1

    .line 2029
    :cond_0
    :goto_0
    return-void

    .line 2016
    :cond_1
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8, v7, v10, v11, v12}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 2018
    .local v8, notification:Landroid/app/Notification;
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 2020
    .local v6, context:Landroid/content/Context;
    const-string v13, "%.02f MHz"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2022
    .local v4, contentText:Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-class v13, Lcom/broadcom/bt/app/fm/rx/FmRadio;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2023
    .local v9, notificationIntent:Landroid/content/Intent;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v9, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2025
    .local v3, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v8, v6, v5, v4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2027
    const/4 v2, 0x1

    .line 2028
    .local v2, PLAYING_ID:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v14, 0x1

    invoke-virtual {v13, v14, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private stopSeekAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2277
    const-string v0, "FmRxRadio"

    const-string v1, "wangdapeng  stopSeekAll()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z

    if-nez v0, :cond_0

    .line 2289
    :goto_0
    return-void

    .line 2281
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissSeekAllProgressDialog()V

    .line 2282
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStationAbort()I

    .line 2283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    .line 2284
    iput-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z

    .line 2285
    iput-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    .line 2286
    iput-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 2287
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setAutoSearch(Z)V

    .line 2288
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v0, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->stationSearch(Z)V

    goto :goto_0
.end method

.method private switchCodecPath(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "sp"

    .prologue
    const/4 v3, 0x1

    .line 847
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fm_pref_audio_path"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    .line 849
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCodecPath path ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    if-ne v0, v3, :cond_0

    .line 853
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iput-boolean v3, v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mIsSpeaker:Z

    .line 859
    :goto_0
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    packed-switch v0, :pswitch_data_0

    .line 868
    :goto_1
    return-void

    .line 857
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mIsSpeaker:Z

    goto :goto_0

    .line 861
    :pswitch_0
    const-string v0, "fm_route=fm_speaker"

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 864
    :pswitch_1
    const-string v0, "fm_route=fm_headset"

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setParameters(Ljava/lang/String;)V

    goto :goto_1

    .line 859
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateAudioMode(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sp"

    .prologue
    .line 802
    const-string v0, "FmRxRadio"

    const-string v1, "updateAudioMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fm_pref_audio_mode"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioMode:I

    .line 807
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending audio mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioMode:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setAudioMode(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioModeUpdatePending:Z

    .line 812
    :cond_0
    return-void

    .line 810
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAudioPath(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "sp"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 822
    const-string v2, "FmRxRadio"

    const-string v3, "updateAudioPath()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "fm_pref_audio_path"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    .line 827
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending audio path ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    if-ne v2, v0, :cond_1

    .line 831
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iput-boolean v0, v2, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mIsSpeaker:Z

    .line 838
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v2, :cond_0

    .line 839
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setAudioPath(I)I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    .line 840
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioPathUpdatePending == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->audioPathUpdatePending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    return-void

    .line 835
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iput-boolean v1, v2, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->mIsSpeaker:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 839
    goto :goto_1
.end method

.method private updateAutoSearch(Landroid/content/SharedPreferences;)V
    .locals 2
    .parameter "sp"

    .prologue
    .line 1077
    const-string v0, "FmRxRadio"

    const-string v1, "updateAutoSearch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateSetSNRThreshold(Landroid/content/SharedPreferences;)V

    .line 1080
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsBackFromAutoSearch:Z

    .line 1082
    return-void
.end method

.method private updateFMVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 764
    const-string v0, "FmRxRadio"

    const-string v1, "updateFMVolume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setFMVolume(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmVolumeUpdatepending:Z

    .line 769
    :cond_0
    return-void

    .line 766
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFrequency(I)V
    .locals 6
    .parameter "freq"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 879
    const-string v0, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFrequency() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 883
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyGraphics(I)V

    .line 884
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget-boolean v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I

    if-eq v0, v5, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setSeekStatus(ZZ)V

    .line 888
    const-string v0, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending frequency ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 891
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsUpdateFreq:Z

    .line 892
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-virtual {v0, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->tuneRadio(I)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z

    .line 894
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 884
    goto :goto_0

    :cond_2
    move v1, v2

    .line 892
    goto :goto_1
.end method

.method private updateLivePolling(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "sp"

    .prologue
    const/4 v1, 0x0

    .line 1019
    const-string v0, "FmRxRadio"

    const-string v2, "updateLivePolling()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    const-string v0, "fm_pref_live_polling"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePoll:Z

    .line 1024
    const-string v0, "fm_pref_live_polling_interval"

    const-string v2, "2000"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePollinterval:I

    .line 1026
    const-string v2, "FmRxRadio"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending live poll ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePoll:Z

    if-eqz v0, :cond_1

    const-string v0, "TRUE"

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    const-string v0, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending live poll interval ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePollinterval:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePoll:Z

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingLivePollinterval:I

    invoke-virtual {v0, v2, v3}, Lcom/broadcom/bt/service/fm/FmReceiver;->setLiveAudioPolling(ZI)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->livePollingUpdatePending:Z

    .line 1034
    :cond_0
    return-void

    .line 1026
    :cond_1
    const-string v0, "FALSE"

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1031
    goto :goto_1
.end method

.method private updateMinMaxFrequencies()V
    .locals 4

    .prologue
    const/16 v3, 0x2a30

    const/16 v2, 0x2328

    .line 1059
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    if-nez v0, :cond_2

    .line 1060
    :cond_0
    const/16 v0, 0x222e

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    .line 1061
    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    .line 1072
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setMinMaxFrequencies(II)V

    .line 1073
    :cond_1
    return-void

    .line 1062
    :cond_2
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1063
    const/16 v0, 0x1db0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    .line 1064
    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    goto :goto_0

    .line 1065
    :cond_3
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1066
    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    .line 1067
    iput v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    goto :goto_0
.end method

.method private updateMuted(Z)V
    .locals 3
    .parameter "muted"

    .prologue
    .line 904
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMuted() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    .line 909
    const-string v1, "FmRxRadio"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending muted ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    if-eqz v0, :cond_1

    const-string v0, "TRUE"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingMute:Z

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->muteAudio(Z)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->muteUpdatePending:Z

    .line 914
    :cond_0
    return-void

    .line 909
    :cond_1
    const-string v0, "FALSE"

    goto :goto_0

    .line 912
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateNflEstimate(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sp"

    .prologue
    .line 924
    const-string v0, "FmRxRadio"

    const-string v1, "updateNflEstimate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fm_pref_nfl_mode"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingNflEstimate:I

    .line 930
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending NFL mode ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingNflEstimate:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingNflEstimate:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->estimateNoiseFloorLevel(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->nflEstimateUpdatePending:Z

    .line 936
    :cond_0
    return-void

    .line 933
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePhoneState(I)V
    .locals 5
    .parameter "state"

    .prologue
    .line 2038
    const-string v1, "N/A"

    .line 2039
    .local v1, stateString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2068
    :cond_0
    :goto_0
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call State : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    return-void

    .line 2041
    :pswitch_0
    const-string v1, "Idle"

    .line 2042
    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInAirplaneMode:Z

    if-nez v2, :cond_1

    .line 2043
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissErrorDlg()V

    .line 2045
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2047
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2048
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Lcom/broadcom/bt/app/fm/rx/FmRadio$9;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$9;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2060
    .end local v0           #handler:Landroid/os/Handler;
    :pswitch_1
    const-string v1, "Off Hook"

    .line 2061
    goto :goto_0

    .line 2065
    :pswitch_2
    const-string v1, "Ringing"

    goto :goto_0

    .line 2039
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateRdsMode(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "sp"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 778
    const-string v0, "FmRxRadio"

    const-string v3, "updateRdsMode()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "fm_pref_rds_enabled_2"

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsMode:I

    .line 782
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "fm_pref_af_enabled"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAfMode:I

    .line 784
    const-string v0, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending RDS mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string v0, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending AF mode ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAfMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsMode:I

    const/16 v4, 0x7c

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAfMode:I

    iget v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNfl:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/broadcom/bt/service/fm/FmReceiver;->setRdsMode(IIII)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->rdsModeUpdatePending:Z

    .line 792
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 782
    goto :goto_0

    :cond_2
    move v1, v2

    .line 788
    goto :goto_1
.end method

.method private updateScanStep(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sp"

    .prologue
    .line 736
    const-string v0, "FmRxRadio"

    const-string v1, "updateScanStep()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "fm_pref_scan_step"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanStep:I

    .line 741
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending scan step ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanStep:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanStep:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setStepSize(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    .line 750
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->scanStepUpdatePending:Z

    if-nez v0, :cond_0

    .line 751
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanStep:I

    if-nez v0, :cond_2

    const/16 v0, 0xa

    :goto_1
    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    .line 752
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyStep(I)V

    .line 755
    :cond_0
    return-void

    .line 745
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 751
    :cond_2
    const/4 v0, 0x5

    goto :goto_1
.end method

.method private updateSetSNRThreshold(Landroid/content/SharedPreferences;)V
    .locals 3
    .parameter "sp"

    .prologue
    .line 1044
    const-string v0, "FmRxRadio"

    const-string v1, "updateSetSNRThreshold()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    const-string v0, "fm_pref_snr_thres"

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSnrThreshold:I

    .line 1050
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting SNR Threshold("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSnrThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSnrThreshold:I

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setSNRThreshold(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->fmSetSNRThresholdPending:Z

    .line 1056
    :cond_0
    return-void

    .line 1054
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateStationSearch(I)V
    .locals 10
    .parameter "direction"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 945
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 948
    .local v2, endFrequency:I
    const-string v0, "FmRxRadio"

    const-string v1, "updateStationSearch()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iput p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    .line 953
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending search direction ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_2

    .line 958
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_4

    .line 961
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    if-gt v0, v1, :cond_3

    .line 962
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 963
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 978
    :cond_0
    :goto_0
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStationSearch  mPendingFrequency= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStationSearch  endFrequency= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStationSearch  stationSearchUpdatePending= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    const/16 v3, 0x66

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingScanMethod:I

    iget v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRdsType:I

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/FmReceiver;->seekStationCombo(IIIIIZII)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v9

    :goto_1
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    .line 994
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateStationSearch  stationSearchUpdatePending= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z

    if-eqz v0, :cond_1

    .line 1003
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    if-nez v0, :cond_1

    .line 1004
    iput-boolean v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    iput-boolean v9, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z

    .line 1006
    :cond_1
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    if-eqz v0, :cond_2

    .line 1007
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v0, v9, v6}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setSeekStatus(ZZ)V

    .line 1009
    :cond_2
    return-void

    .line 965
    :cond_3
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 966
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    goto/16 :goto_0

    .line 970
    :cond_4
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-gt v0, v1, :cond_5

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    if-gt v0, v1, :cond_5

    .line 971
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 972
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    goto/16 :goto_0

    .line 974
    :cond_5
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMaxFreq:I

    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 975
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I

    goto/16 :goto_0

    :cond_6
    move v0, v6

    .line 983
    goto :goto_1
.end method

.method private updateWorldRegion(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "sp"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 707
    const-string v2, "FmRxRadio"

    const-string v3, "updateWorldRegion()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const-string v2, "fm_pref_world_region"

    const-string v3, "0"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    .line 711
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMinMaxFrequencies()V

    .line 712
    const-string v2, "fm_pref_deemphasis"

    const-string v3, "0"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    .line 713
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    if-nez v2, :cond_2

    .line 714
    const/16 v2, 0x40

    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    .line 719
    :cond_0
    :goto_0
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending region ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending deemphasis ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v2, :cond_1

    .line 723
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    invoke-virtual {v2, v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->setWorldRegion(II)I

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->worldRegionUpdatePending:Z

    .line 726
    :cond_1
    return-void

    .line 715
    :cond_2
    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    if-eq v2, v0, :cond_3

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingRegion:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 717
    :cond_3
    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingDeemphasis:I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 723
    goto :goto_1
.end method

.method private wiredHeadsetIsOn(Z)V
    .locals 0
    .parameter "isOn"

    .prologue
    .line 1994
    iput-boolean p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetPlug:Z

    .line 1995
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->displayHeadsetPlugInMsg(Z)V

    .line 1996
    return-void
.end method


# virtual methods
.method public clearChannel(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1942
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    aput v3, v1, p1

    .line 1943
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelsName:[Ljava/lang/String;

    aput-object v4, v1, p1

    .line 1944
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1945
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1947
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1948
    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2232
    const-string v0, "FmRxRadio"

    const-string v1, "wangdapeng  dismissProgressDialog(),  dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2236
    :cond_0
    return-void
.end method

.method public dismissSeekAllProgressDialog()V
    .locals 2

    .prologue
    .line 2219
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2221
    const-string v0, "FmRxRadio"

    const-string v1, "wangdapeng  dismissSeekAllProgressDialog(),  dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 2223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    .line 2225
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x3

    .line 681
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 682
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 683
    .local v1, keyCode:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 684
    const/16 v3, 0x18

    if-ne v1, v3, :cond_1

    .line 685
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 686
    .local v2, newVolume:I
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    mul-int/lit8 v4, v2, 0x1e

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->setFMVolume(I)I

    .line 696
    .end local v2           #newVolume:I
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 689
    :cond_1
    const/16 v3, 0x19

    if-ne v1, v3, :cond_0

    .line 690
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 691
    .restart local v2       #newVolume:I
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    mul-int/lit8 v4, v2, 0x1e

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    div-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiver;->setFMVolume(I)I

    goto :goto_0
.end method

.method public getChannels()[I
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    return-object v0
.end method

.method public getChannelsName()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelsName:[Ljava/lang/String;

    return-object v0
.end method

.method public handleButtonEvent(II)V
    .locals 4
    .parameter "buttonId"
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1808
    packed-switch p1, :pswitch_data_0

    .line 1867
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1811
    :pswitch_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1813
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z

    if-nez v1, :cond_0

    .line 1817
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    if-eqz v1, :cond_1

    .line 1818
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1819
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    .line 1821
    :cond_1
    iput-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 1822
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->receivehandler(I)V

    goto :goto_0

    .line 1828
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMuted(Z)V

    goto :goto_0

    .line 1832
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMuted(Z)V

    goto :goto_0

    .line 1837
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->loadProgressDialog(I)V

    .line 1838
    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateStationSearch(I)V

    goto :goto_0

    .line 1843
    :pswitch_5
    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->loadProgressDialog(I)V

    .line 1844
    const/16 v1, 0x80

    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateStationSearch(I)V

    goto :goto_0

    .line 1849
    :pswitch_6
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->buttonSeekFrequencyDown()V

    goto :goto_0

    .line 1854
    :pswitch_7
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->buttonSeekFrequencyUp()V

    goto :goto_0

    .line 1859
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1860
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1861
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1808
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public loadProgressDialog(I)V
    .locals 7
    .parameter "dialogType"

    .prologue
    const v6, 0x7f060081

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2161
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_4

    .line 2163
    const-string v0, "FmRxRadio"

    const-string v1, "wangdapeng  loadProgressDialog(),  create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2165
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2166
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2167
    if-ne v2, p1, :cond_2

    .line 2168
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2174
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2190
    :cond_1
    :goto_1
    const-string v0, "FmRxRadio"

    const-string v1, "wangdapeng  loadProgressDialog(),  out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    return-void

    .line 2169
    :cond_2
    if-ne v4, p1, :cond_3

    .line 2170
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060082

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2171
    :cond_3
    if-ne v5, p1, :cond_0

    .line 2172
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060083

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2176
    :cond_4
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2179
    if-ne v2, p1, :cond_6

    .line 2180
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2185
    :cond_5
    :goto_2
    const-string v0, "FmRxRadio"

    const-string v1, "wangdapeng  loadProgressDialog(),  show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2181
    :cond_6
    if-ne v4, p1, :cond_7

    .line 2182
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060082

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2183
    :cond_7
    if-ne v5, p1, :cond_5

    .line 2184
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060083

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public loadSeekALLProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2195
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 2197
    const-string v0, "FmRxRadio"

    const-string v1, "wangdapeng  loadProgressDialog(),  create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    .line 2199
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2200
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2202
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f060082

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2203
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/broadcom/bt/app/fm/rx/FmRadio$10;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$10;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2208
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2209
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSearchProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2214
    :cond_0
    const-string v0, "FmRxRadio"

    const-string v1, "wangdapeng  loadProgressDialog(),  out"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 520
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    if-ne v0, v1, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->finish()V

    .line 526
    :goto_0
    return-void

    .line 523
    :cond_0
    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInBackground:Z

    .line 524
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1273
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    :pswitch_0
    return v0

    .line 1258
    :pswitch_1
    sget v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setChannel(I)V

    .line 1259
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    goto :goto_0

    .line 1262
    :pswitch_2
    sget v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->clearChannel(I)V

    .line 1263
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    goto :goto_0

    .line 1269
    :pswitch_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelsName:[Ljava/lang/String;

    sget v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->createRenameDlg(Ljava/lang/String;)V

    goto :goto_0

    .line 1256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const v12, 0x7f060073

    const/16 v11, 0x20

    const/4 v10, 0x0

    .line 317
    const-string v6, "FmRxRadio"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 320
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->requestWindowFeature(I)Z

    .line 322
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isAirplaneModeOn()Z

    move-result v6

    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInAirplaneMode:Z

    .line 324
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    iput-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNotificationManager:Landroid/app/NotificationManager;

    .line 325
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    iput-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 326
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    .line 328
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 329
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 330
    .local v1, e:Landroid/content/SharedPreferences$Editor;
    const-string v6, "fm_pref_audio_path"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 331
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 333
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v6, 0xc

    if-ge v2, v6, :cond_0

    .line 334
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    iget-object v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channel"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    aput v7, v6, v2

    .line 335
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelsName:[Ljava/lang/String;

    iget-object v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channelname"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 333
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f050020

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRdsProgramTypes:[Ljava/lang/String;

    .line 340
    const v6, 0x7f030003

    invoke-static {p0, v6, v13}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    check-cast v6, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iput-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    .line 341
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v6, p0}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->init(Lcom/broadcom/bt/app/fm/rx/IRadioViewRxTouchEventHandler;)V

    .line 342
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setContentView(Landroid/view/View;)V

    .line 344
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateMinMaxFrequencies()V

    .line 345
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    iget v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequencyStep:I

    invoke-virtual {v6, v7}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyStep(I)V

    .line 347
    const/16 v2, 0x15

    :goto_1
    if-gt v2, v11, :cond_1

    .line 348
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v6, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 349
    .local v5, v:Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->registerForContextMenu(Landroid/view/View;)V

    .line 347
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 352
    .end local v5           #v:Landroid/view/View;
    :cond_1
    new-instance v6, Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    invoke-direct {v6, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    .line 353
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    invoke-virtual {v6, v7, v11}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 354
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMediaStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "zte.com.cn.fm.ACTION_END"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 357
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    sget-object v6, Lcom/broadcom/bt/app/fm/rx/FmRadio;->ACTION_SETFMVOL:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v6, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v6, "zte.com.cn.fm.MOVE_BACKGROUND_FROM_SETTING"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMediaStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 363
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_2

    .line 365
    invoke-virtual {p0, v12}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, strMsg:Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    .line 368
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v12}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 371
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    const v7, 0x104000a

    invoke-virtual {p0, v7}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;

    invoke-direct {v8, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 384
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 387
    .end local v4           #strMsg:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    if-nez v6, :cond_3

    .line 388
    new-instance v6, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    invoke-direct {v6, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    .line 389
    :cond_3
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6, v7}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 391
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 392
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    invoke-virtual {v6, p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 396
    :goto_2
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->openFMInput()V

    .line 397
    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 398
    return-void

    .line 394
    :cond_4
    invoke-direct {p0, v10}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->wiredHeadsetIsOn(Z)V

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1193
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1194
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    add-int/lit8 v0, v0, -0x15

    sput v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    .line 1195
    sget v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    if-ltz v0, :cond_0

    sget v0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    .line 1209
    :cond_0
    :goto_0
    return-void

    .line 1197
    :cond_1
    invoke-interface {p1}, Landroid/view/ContextMenu;->clear()V

    .line 1198
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    new-array v2, v9, [Ljava/lang/Object;

    sget v3, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4059

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v8, v7, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1200
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    sget v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    aget v0, v0, v1

    if-eqz v0, :cond_2

    .line 1201
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060072

    new-array v3, v8, [Ljava/lang/Object;

    sget v4, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v7, v0, v7, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1203
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060070

    new-array v2, v8, [Ljava/lang/Object;

    sget v3, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v9, v7, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1206
    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v7, v0, v7, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 482
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 484
    const-string v1, "FmRxRadio"

    const-string v2, "Calling onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    if-eqz v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 488
    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    .line 490
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMediaStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 491
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 492
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v1, "fm_pref_audio_path"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 494
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 496
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_1

    .line 498
    const-string v1, "FmRxRadio"

    const-string v2, "Finishing FmReceiver proxy..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->unregisterEventHandler()V

    .line 501
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->finish()V

    .line 502
    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 505
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    .line 506
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissSeekAllProgressDialog()V

    .line 507
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissErrorDlg()V

    .line 508
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 509
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 511
    :cond_2
    iput-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;

    .line 513
    :cond_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPhoneStateListener:Lcom/broadcom/bt/app/fm/rx/FmRadio$MyPhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 514
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 515
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->closeFMInput()V

    .line 516
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 530
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 460
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 462
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause shutdownPending=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-eqz v0, :cond_0

    .line 466
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->shutdownPending:Z

    if-nez v0, :cond_2

    .line 467
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->showNotification()V

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInBackground:Z

    .line 474
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInAirplaneMode:Z

    if-eqz v0, :cond_1

    .line 475
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissErrorDlg()V

    .line 476
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    .line 478
    :cond_1
    return-void

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1183
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1184
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->startActivity(Landroid/content/Intent;)V

    .line 1185
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInSettings:Z

    .line 1187
    const/4 v1, 0x0

    return v1
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 4
    .parameter "ProxyObject"

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_0

    .line 1127
    check-cast p1, Lcom/broadcom/bt/service/fm/FmReceiver;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 1128
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_1

    .line 1129
    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, error:Ljava/lang/String;
    const-string v1, "FmRxRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->displayErrorMessageAndExit(Ljava/lang/String;)V

    .line 1148
    .end local v0           #error:Ljava/lang/String;
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;

    if-nez v1, :cond_2

    .line 1137
    new-instance v1, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;-><init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;

    .line 1138
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V

    .line 1141
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1142
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "last"

    const/16 v3, 0x226a

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    .line 1143
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerUpSequence()V

    goto :goto_0

    .line 1145
    :cond_3
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerupComplete()V

    .line 1146
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getStatus()I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 407
    const-string v1, "FmRxRadio"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v7, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 411
    iput-boolean v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInBackground:Z

    .line 412
    iput-boolean v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInSettings:Z

    .line 413
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInAirplaneMode:Z

    if-eqz v1, :cond_2

    .line 414
    const v1, 0x7f06007b

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    .local v0, error:Ljava/lang/String;
    const-string v1, "FmRxRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->displayErrorMessageAndExit(Ljava/lang/String;)V

    .line 447
    .end local v0           #error:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p0, v7}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setVolumeControlStream(I)V

    .line 448
    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsBackFromAutoSearch:Z

    if-eqz v1, :cond_1

    .line 449
    const-string v1, "FmRxRadio"

    const-string v2, "wangdapeng && mIsBackFromAutoSearch   com.android.zte.fm.settings.autoSearch  "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iput-boolean v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsBackFromAutoSearch:Z

    .line 451
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v1, v6}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setAutoSearch(Z)V

    .line 452
    iput-boolean v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z

    .line 453
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->loadSeekALLProgressDialog()V

    .line 454
    invoke-direct {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearch(Z)V

    .line 456
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 457
    return-void

    .line 418
    :cond_2
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isPhoneOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 419
    const v1, 0x7f06007c

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 420
    .restart local v0       #error:Ljava/lang/String;
    const-string v1, "FmRxRadio"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->displayErrorMessageAndExit(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    .end local v0           #error:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v1, :cond_0

    .line 427
    const-string v1, "FmRxRadio"

    const-string v2, "Getting FmReceiver proxy..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isFirstIn:I

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->isHeadSetPlug:Z

    if-eqz v1, :cond_4

    .line 430
    invoke-virtual {p0, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->loadProgressDialog(I)V

    .line 431
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->delaySetAudioPathHandler:Landroid/os/Handler;

    const/16 v2, 0x24

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 434
    :cond_4
    invoke-direct {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 436
    invoke-static {p0, p0}, Lcom/broadcom/bt/service/fm/FmReceiver;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    .line 440
    const-string v1, "FmRxRadio"

    const-string v2, "FmReceiver.getProxy() return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 1298
    const-string v0, "FmRxRadio"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const-string v0, "fm_pref_audio_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1301
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateAudioMode(Landroid/content/SharedPreferences;)V

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1302
    :cond_1
    const-string v0, "fm_pref_audio_path"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1303
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->switchCodecPath(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1304
    :cond_2
    const-string v0, "fm_pref_scan_step"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1305
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateScanStep(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1306
    :cond_3
    const-string v0, "fm_pref_rds_enabled_2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1307
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateRdsMode(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1308
    :cond_4
    const-string v0, "fm_pref_af_enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1309
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateRdsMode(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1310
    :cond_5
    const-string v0, "fm_pref_world_region"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1311
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateWorldRegion(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1312
    :cond_6
    const-string v0, "fm_pref_deemphasis"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1313
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateWorldRegion(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1314
    :cond_7
    const-string v0, "fm_pref_live_polling"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1315
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateLivePolling(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1316
    :cond_8
    const-string v0, "fm_pref_live_polling_interval"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1317
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateLivePolling(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1318
    :cond_9
    const-string v0, "fm_pref_nfl_mode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1319
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateNflEstimate(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1320
    :cond_a
    const-string v0, "fm_pref_snr_thres"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1321
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateSetSNRThreshold(Landroid/content/SharedPreferences;)V

    goto :goto_0

    .line 1322
    :cond_b
    const-string v0, "fm_pref_auto_search"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateAutoSearch(Landroid/content/SharedPreferences;)V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 402
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 403
    return-void
.end method

.method public saveChannelName(Landroid/widget/EditText;Ljava/lang/String;)Z
    .locals 8
    .parameter "mRenameEditText"
    .parameter "nameStr"

    .prologue
    const/4 v4, 0x0

    .line 1903
    const-string v5, "FmRxRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangdapeng saveChannelName : nameStr=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    const/4 v2, 0x0

    .line 1905
    .local v2, isExist:Z
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1906
    .local v3, newNameStr:Ljava/lang/String;
    const-string v5, "FmRxRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangdapeng saveChannelName : newNameStr=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    const-string v5, "FmRxRadio"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wangdapeng saveChannelName : mLongPressChannel=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1911
    const-string v5, "FmRxRadio"

    const-string v6, "wangdapeng saveChannelName : newNameStr== null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1912
    const v5, 0x7f060080

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1936
    :goto_0
    return v4

    .line 1917
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v5, 0xc

    if-ge v1, v5, :cond_1

    .line 1918
    sget v5, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    if-eq v1, v5, :cond_2

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelsName:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1920
    const/4 v2, 0x1

    .line 1924
    :cond_1
    if-nez v2, :cond_3

    .line 1925
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelsName:[Ljava/lang/String;

    sget v5, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    aput-object v3, v4, v5

    .line 1926
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1927
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channelname"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelsName:[Ljava/lang/String;

    sget v6, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mLongPressChannel:I

    aget-object v5, v5, v6

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1928
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1929
    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    invoke-virtual {v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->updateChannelButtons()V

    .line 1930
    const/4 v4, 0x1

    goto :goto_0

    .line 1917
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1934
    :cond_3
    const-string v5, "FmRxRadio"

    const-string v6, "wangdapeng saveChannelName : == same name exist"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1935
    const v5, 0x7f06007f

    invoke-virtual {p0, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public selectChannel(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1951
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 1952
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 1953
    return-void
.end method

.method public setAudioPath(I)I
    .locals 4
    .parameter "audioPath"

    .prologue
    .line 2135
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/4 v0, 0x0

    .line 2136
    .local v0, returnCode:I
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAudioPath ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_0

    .line 2139
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1, p1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setAudioPath(I)I

    move-result v0

    .line 2141
    :cond_0
    return v0
.end method

.method public setChannel(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 1879
    const/4 v2, 0x0

    .line 1880
    .local v2, isExist:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0xc

    if-ge v1, v3, :cond_0

    .line 1881
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    aget v3, v3, v1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    aget v3, v3, v1

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    if-ne v3, v4, :cond_1

    .line 1883
    const/4 v2, 0x1

    .line 1887
    :cond_0
    if-nez v2, :cond_2

    .line 1888
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannels:[I

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    aput v4, v3, p1

    .line 1889
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelsName:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    div-int/lit8 v5, v5, 0x64

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    rem-int/lit8 v5, v5, 0x64

    div-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 1890
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1891
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelname"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mChannelsName:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1893
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1900
    .end local v0           #e:Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 1880
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1897
    :cond_2
    const v3, 0x7f06007a

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public setCodecPath(I)V
    .locals 1
    .parameter "audioPath"

    .prologue
    .line 2146
    packed-switch p1, :pswitch_data_0

    .line 2157
    :goto_0
    return-void

    .line 2148
    :pswitch_0
    const-string v0, "fm_route=disabled"

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 2151
    :pswitch_1
    const-string v0, "fm_route=fm_speaker"

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 2154
    :pswitch_2
    const-string v0, "fm_route=fm_headset"

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 2146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setFrequency(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 1957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z

    .line 1958
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateFrequency(I)V

    .line 1959
    return-void
.end method
