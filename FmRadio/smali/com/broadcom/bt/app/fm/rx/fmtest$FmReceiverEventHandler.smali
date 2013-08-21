.class public Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;
.super Ljava/lang/Object;
.source "fmtest.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/fmtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FmReceiverEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;


# direct methods
.method protected constructor <init>(Lcom/broadcom/bt/app/fm/rx/fmtest;)V
    .locals 0
    .parameter

    .prologue
    .line 384
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private displayNewAfState(I)V
    .locals 0
    .parameter "afMode"

    .prologue
    .line 415
    return-void
.end method

.method private displayNewFrequency(II)V
    .locals 0
    .parameter "freq"
    .parameter "isCompletedSeekInt"

    .prologue
    .line 424
    return-void
.end method

.method private displayNewMutedState(Z)V
    .locals 0
    .parameter "isMute"

    .prologue
    .line 433
    return-void
.end method

.method private displayNewRdsData(IILjava/lang/String;)V
    .locals 0
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 397
    return-void
.end method

.method private displayNewRdsState(I)V
    .locals 0
    .parameter "rdsMode"

    .prologue
    .line 406
    return-void
.end method

.method private displayNewSignalStrength(I)V
    .locals 0
    .parameter "rssi"

    .prologue
    .line 392
    return-void
.end method


# virtual methods
.method public onAudioModeEvent(I)V
    .locals 2
    .parameter "audioMode"

    .prologue
    .line 442
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 443
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 444
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$500(Lcom/broadcom/bt/app/fm/rx/fmtest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 445
    return-void
.end method

.method public onAudioPathEvent(I)V
    .locals 2
    .parameter "audioPath"

    .prologue
    .line 453
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 454
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 455
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$500(Lcom/broadcom/bt/app/fm/rx/fmtest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 456
    return-void
.end method

.method public onEstimateNoiseFloorLevelEvent(I)V
    .locals 2
    .parameter "nfl"

    .prologue
    .line 461
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 462
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 463
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$500(Lcom/broadcom/bt/app/fm/rx/fmtest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    return-void
.end method

.method public onLiveAudioQualityEvent(II)V
    .locals 2
    .parameter "rssi"
    .parameter "snr"

    .prologue
    .line 473
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 474
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 475
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$500(Lcom/broadcom/bt/app/fm/rx/fmtest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 476
    return-void
.end method

.method public onRdsDataEvent(IILjava/lang/String;)V
    .locals 2
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 484
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 485
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 486
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$500(Lcom/broadcom/bt/app/fm/rx/fmtest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 487
    return-void
.end method

.method public onRdsModeEvent(II)V
    .locals 2
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"

    .prologue
    .line 494
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 495
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 496
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$500(Lcom/broadcom/bt/app/fm/rx/fmtest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 497
    return-void
.end method

.method public onSeekCompleteEvent(IIIZ)V
    .locals 2
    .parameter "freq"
    .parameter "rssi"
    .parameter "snr"
    .parameter "seeksuccess"

    .prologue
    .line 505
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 506
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 507
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$500(Lcom/broadcom/bt/app/fm/rx/fmtest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 509
    return-void
.end method

.method public onStatusEvent(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "freq"
    .parameter "rssi"
    .parameter "snr"
    .parameter "radioIsOn"
    .parameter "rdsProgramType"
    .parameter "rdsProgramService"
    .parameter "rdsRadioText"
    .parameter "rdsProgramTypeName"
    .parameter "isMute"

    .prologue
    .line 520
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->mPowerOffRadio:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$600(Lcom/broadcom/bt/app/fm/rx/fmtest;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->finish()V

    .line 523
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 524
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 525
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$500(Lcom/broadcom/bt/app/fm/rx/fmtest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    return-void
.end method

.method public onVolumeEvent(II)V
    .locals 2
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 542
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 543
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 544
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$500(Lcom/broadcom/bt/app/fm/rx/fmtest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 545
    return-void
.end method

.method public onWorldRegionEvent(I)V
    .locals 2
    .parameter "worldRegion"

    .prologue
    .line 533
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 534
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 535
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$500(Lcom/broadcom/bt/app/fm/rx/fmtest;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 536
    return-void
.end method
