.class public Lcom/broadcom/bt/app/fm/rx/fmtest;
.super Landroid/app/Activity;
.source "fmtest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EVENT_FMRADIO_SERVER_STATE_CHANGED:I = 0x2

.field private static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x1

.field private static final SIGNAL_CHECK_PENDING_EVENTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "fmtest"


# instance fields
.field private Button01:Landroid/widget/Button;

.field private Button02:Landroid/widget/Button;

.field private Button03:Landroid/widget/Button;

.field private Button04:Landroid/widget/Button;

.field private audioModeUpdatePending:Z

.field private audioPathUpdatePending:Z

.field private fail:Landroid/widget/Button;

.field private fmVolumeUpdatepending:Z

.field private headset_state:Landroid/widget/TextView;

.field private isHeadSetOn:Ljava/lang/Boolean;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

.field private mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;

.field private mHandler:Landroid/os/Handler;

.field private mNfl:I

.field private mPendingAfMode:I

.field private mPendingRdsMode:I

.field private mPowerOffRadio:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mark:I

.field private ok:Landroid/widget/Button;

.field private rdsModeUpdatePending:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->headset_state:Landroid/widget/TextView;

    .line 45
    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mark:I

    .line 48
    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mPendingRdsMode:I

    .line 49
    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mPendingAfMode:I

    .line 51
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->audioModeUpdatePending:Z

    .line 52
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->audioPathUpdatePending:Z

    .line 53
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->rdsModeUpdatePending:Z

    .line 54
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fmVolumeUpdatepending:Z

    .line 58
    iput-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->isHeadSetOn:Ljava/lang/Boolean;

    .line 59
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mPowerOffRadio:Z

    .line 61
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/fmtest$1;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/fmtest$1;-><init>(Lcom/broadcom/bt/app/fm/rx/fmtest;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/fmtest$2;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/fmtest$2;-><init>(Lcom/broadcom/bt/app/fm/rx/fmtest;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 384
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/app/fm/rx/fmtest;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->updateScreen(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/app/fm/rx/fmtest;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->isHeadSetOn:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/broadcom/bt/app/fm/rx/fmtest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->enableTest()V

    return-void
.end method

.method static synthetic access$300(Lcom/broadcom/bt/app/fm/rx/fmtest;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->enableFreqButtons(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/broadcom/bt/app/fm/rx/fmtest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->retryPendingCommands()V

    return-void
.end method

.method static synthetic access$500(Lcom/broadcom/bt/app/fm/rx/fmtest;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/broadcom/bt/app/fm/rx/fmtest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mPowerOffRadio:Z

    return v0
.end method

.method private disableTest()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->headset_state:Landroid/widget/TextView;

    const v1, 0x7f06008a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mark:I

    .line 221
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->ok:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fail:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button01:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button02:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button03:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 226
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button04:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    return-void
.end method

.method private enableFreqButtons(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x1

    .line 231
    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->headset_state:Landroid/widget/TextView;

    const v1, 0x7f060089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    :goto_0
    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mark:I

    .line 237
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->ok:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 238
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fail:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button01:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button02:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button03:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button04:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->headset_state:Landroid/widget/TextView;

    const v1, 0x7f06008b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private enableTest()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 207
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->headset_state:Landroid/widget/TextView;

    const v1, 0x7f060089

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 208
    iput v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mark:I

    .line 209
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->ok:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fail:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button01:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button02:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button03:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button04:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    return-void
.end method

.method private powerDownSequence()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    iput-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->audioPathUpdatePending:Z

    .line 293
    iput-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->audioModeUpdatePending:Z

    .line 294
    iput-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->rdsModeUpdatePending:Z

    .line 295
    iput-boolean v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fmVolumeUpdatepending:Z

    .line 296
    const-string v1, "fm_route=disabled"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->setAudioPath(I)I

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOffRadio()I

    move-result v0

    .line 301
    .local v0, status:I
    const/4 v1, 0x1

    return v1
.end method

.method private powerUpSequence()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 277
    const-string v1, "fmtest"

    const-string v2, "powerUpSequence()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iput-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->audioModeUpdatePending:Z

    .line 280
    iput-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->audioPathUpdatePending:Z

    .line 281
    iput-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->rdsModeUpdatePending:Z

    .line 282
    iput-boolean v3, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fmVolumeUpdatepending:Z

    .line 284
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->turnOnRadio(I)I

    move-result v0

    .line 285
    .local v0, status:I
    const-string v1, "fmtest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Turn on radio status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    return-void
.end method

.method private retryPendingCommands()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 310
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->audioModeUpdatePending:Z

    if-eqz v0, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->updateAudioMode()V

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->audioPathUpdatePending:Z

    if-eqz v0, :cond_2

    .line 313
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->updateAudioPath()V

    goto :goto_0

    .line 314
    :cond_2
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->rdsModeUpdatePending:Z

    if-eqz v0, :cond_3

    .line 315
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->updateRdsMode()V

    goto :goto_0

    .line 316
    :cond_3
    iget-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fmVolumeUpdatepending:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    div-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->updateFMVolume(I)V

    goto :goto_0
.end method

.method private turnoffFMwithExitCode(I)V
    .locals 1
    .parameter "exitCode"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->disableTest()V

    .line 169
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->powerDownSequence()Z

    .line 170
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->setResult(I)V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mPowerOffRadio:Z

    .line 172
    return-void
.end method

.method private updateAudioMode()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 328
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v1, v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->setAudioMode(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->audioModeUpdatePending:Z

    .line 331
    :cond_1
    return-void
.end method

.method private updateAudioPath()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setAudioPath(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->audioPathUpdatePending:Z

    .line 346
    :cond_0
    return-void

    .line 344
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFMVolume(I)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 378
    const-string v0, "fmtest"

    const-string v1, "updateFMVolume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiver;->setFMVolume(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fmVolumeUpdatepending:Z

    .line 383
    :cond_0
    return-void

    .line 380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFrequency(I)V
    .locals 1
    .parameter "freq"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/fm/FmReceiver;->tuneRadio(I)I

    .line 356
    :cond_0
    return-void
.end method

.method private updateRdsMode()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 363
    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mPendingRdsMode:I

    .line 364
    iput v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mPendingAfMode:I

    .line 369
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v1, :cond_1

    .line 370
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mPendingRdsMode:I

    const/16 v3, 0x7c

    iget v4, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mPendingAfMode:I

    iget v5, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mNfl:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/broadcom/bt/service/fm/FmReceiver;->setRdsMode(IIII)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->rdsModeUpdatePending:Z

    .line 374
    :cond_1
    return-void
.end method

.method private updateScreen(I)V
    .locals 9
    .parameter "state"

    .prologue
    const-wide/16 v7, 0x5dc

    const v6, 0x7f06008c

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    const-string v0, "fmtest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-nez p1, :cond_1

    .line 149
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->isHeadSetOn:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->headset_state:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 151
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->isHeadSetOn:Ljava/lang/Boolean;

    .line 152
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-direct {p0, v3}, Lcom/broadcom/bt/app/fm/rx/fmtest;->enableFreqButtons(Z)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->isHeadSetOn:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->headset_state:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    .line 159
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->isHeadSetOn:Ljava/lang/Boolean;

    .line 160
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 162
    :cond_2
    invoke-direct {p0, v4}, Lcom/broadcom/bt/app/fm/rx/fmtest;->enableFreqButtons(Z)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 247
    .local v0, code:I
    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mark:I

    if-nez v1, :cond_0

    .line 248
    const-string v1, "fmtest"

    const-string v2, "initializing the fm now! can not close"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v1, 0x0

    .line 253
    :goto_0
    return v1

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->powerDownSequence()Z

    .line 252
    invoke-virtual {p0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->finish()V

    .line 253
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->ok:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 176
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->turnoffFMwithExitCode(I)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fail:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->turnoffFMwithExitCode(I)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button01:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 183
    const/16 v0, 0x22e2

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->updateFrequency(I)V

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button02:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    .line 186
    const/16 v0, 0x24fe

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->updateFrequency(I)V

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button03:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    .line 189
    const/16 v0, 0x2652

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->updateFrequency(I)V

    .line 191
    :cond_5
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button04:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 192
    const/16 v0, 0x27b0

    invoke-direct {p0, v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->updateFrequency(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/fmtest;->setContentView(I)V

    .line 104
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/fmtest;->setVolumeControlStream(I)V

    .line 105
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/fmtest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mAudioManager:Landroid/media/AudioManager;

    .line 107
    const v2, 0x7f070005

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/fmtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->headset_state:Landroid/widget/TextView;

    .line 108
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->headset_state:Landroid/widget/TextView;

    const v3, 0x7f06008b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 110
    const v2, 0x7f07000b

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/fmtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->ok:Landroid/widget/Button;

    .line 111
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->ok:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->ok:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 114
    const v2, 0x7f07000a

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/fmtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fail:Landroid/widget/Button;

    .line 115
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fail:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->fail:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/fmtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button01:Landroid/widget/Button;

    .line 119
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button01:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 120
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button01:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v2, 0x7f070007

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/fmtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button02:Landroid/widget/Button;

    .line 123
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button02:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button02:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    const v2, 0x7f070008

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/fmtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button03:Landroid/widget/Button;

    .line 127
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button03:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button03:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 130
    const v2, 0x7f070009

    invoke-virtual {p0, v2}, Lcom/broadcom/bt/app/fm/rx/fmtest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button04:Landroid/widget/Button;

    .line 131
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button04:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->Button04:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 135
    .local v1, intentFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0, v4}, Lcom/broadcom/bt/app/fm/rx/fmtest;->updateScreen(I)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 201
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    :cond_0
    return-void
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 2
    .parameter "ProxyObject"

    .prologue
    .line 259
    const-string v0, "fmtest"

    const-string v1, "onProxyAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-nez v0, :cond_0

    .line 261
    check-cast p1, Lcom/broadcom/bt/service/fm/FmReceiver;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;

    if-nez v0, :cond_1

    .line 265
    new-instance v0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;-><init>(Lcom/broadcom/bt/app/fm/rx/fmtest;)V

    iput-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;

    .line 266
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiverEventHandler:Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;)V

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    invoke-direct {p0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->powerUpSequence()V

    .line 273
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 142
    invoke-static {p0, p0}, Lcom/broadcom/bt/service/fm/FmReceiver;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 144
    return-void
.end method
