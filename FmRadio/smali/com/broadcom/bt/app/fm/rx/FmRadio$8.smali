.class Lcom/broadcom/bt/app/fm/rx/FmRadio$8;
.super Landroid/os/Handler;
.source "FmRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1330
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private updateFrequency(II)V
    .locals 7
    .parameter "freq"
    .parameter "isCompletedSeekInt"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1338
    const-string v3, "FmRxRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateFrequency  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    if-gez p1, :cond_0

    .line 1352
    :goto_0
    return-void

    .line 1342
    :cond_0
    if-eqz p2, :cond_2

    move v0, v1

    .line 1345
    .local v0, isCompletedSeek:Z
    :goto_1
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v3, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1302(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1346
    if-eqz v0, :cond_1

    .line 1347
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setFrequencyGraphics(I)V

    .line 1348
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v4

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v3, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1502(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1350
    :cond_1
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v3

    iget-object v4, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z
    invoke-static {v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v4

    iget-object v5, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v5

    iget-object v6, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v6

    if-eq v5, v6, :cond_3

    :goto_2
    invoke-virtual {v3, v4, v1}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setSeekStatus(ZZ)V

    goto :goto_0

    .end local v0           #isCompletedSeek:Z
    :cond_2
    move v0, v2

    .line 1342
    goto :goto_1

    .restart local v0       #isCompletedSeek:Z
    :cond_3
    move v1, v2

    .line 1350
    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x3

    const/4 v2, 0x0

    .line 1356
    const-string v3, "FmRxRadio"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1364
    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->updateFrequency(II)V

    goto :goto_0

    .line 1365
    :sswitch_1
    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isPhoneOn()Z
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setMutedState(ZZ)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 1369
    :sswitch_2
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->retryPendingCommands()V
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    goto :goto_0

    .line 1370
    :sswitch_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchPending()V
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    goto :goto_0

    .line 1373
    :sswitch_4
    const-string v2, "FmRxRadio"

    const-string v3, "FM_CLOSE_MSG.. ...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const-string v3, "fm_route=disabled"

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->setParameters(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$200(Lcom/broadcom/bt/app/fm/rx/FmRadio;Ljava/lang/String;)V

    .line 1375
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1376
    const-string v2, "FmRxRadio"

    const-string v3, "FM_CLOSE_MSG.. getRadioIsOn()==true; Shutting down the fm Radio.."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v2, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->loadProgressDialog(I)V

    .line 1378
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iput-boolean v1, v2, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 1379
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->powerDownSequence()Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    goto :goto_0

    .line 1386
    :sswitch_5
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setCodecPath(I)V

    .line 1387
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setAudioPath(I)I

    .line 1388
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    goto :goto_0

    .line 1393
    :sswitch_6
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setAudioPath(I)I

    .line 1394
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setCodecPath(I)V

    goto/16 :goto_0

    .line 1399
    :sswitch_7
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1400
    .local v0, newVolume:I
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wangdapeng FM_SET_FMVOLUME_MSG   newVolume ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x1e

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$8;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v3, v3, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/service/fm/FmReceiver;->setFMVolume(I)I

    goto/16 :goto_0

    .line 1362
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x14 -> :sswitch_2
        0x16 -> :sswitch_3
        0x1e -> :sswitch_4
        0x1f -> :sswitch_5
        0x20 -> :sswitch_6
        0x23 -> :sswitch_7
    .end sparse-switch
.end method
