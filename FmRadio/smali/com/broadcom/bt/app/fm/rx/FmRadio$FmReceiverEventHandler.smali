.class public Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FmReceiverEventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;


# direct methods
.method protected constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1415
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private displayNewAfState(I)V
    .locals 3
    .parameter "afMode"

    .prologue
    .line 1469
    const-string v1, "FmRxRadio"

    const-string v2, "displayNewAfState  : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1472
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1473
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1474
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1475
    return-void
.end method

.method private displayNewFrequency(II)V
    .locals 4
    .parameter "freq"
    .parameter "isCompletedSeekInt"

    .prologue
    .line 1483
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayNewFrequency  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1486
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1487
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1488
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1489
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1490
    return-void
.end method

.method private displayNewMutedState(Z)V
    .locals 4
    .parameter "isMute"

    .prologue
    .line 1499
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayNewMutedState  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1502
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1503
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1504
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1505
    return-void

    .line 1503
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private displayNewRdsData(IILjava/lang/String;)V
    .locals 3
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 1433
    const-string v1, "FmRxRadio"

    const-string v2, "displayNewRdsData  : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1436
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1437
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1438
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1439
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRdsProgramTypes:[Ljava/lang/String;

    array-length v1, v1

    if-lt p2, v1, :cond_1

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1441
    :cond_1
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1442
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mRdsProgramTypes:[Ljava/lang/String;

    aget-object v1, v1, p2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1446
    :goto_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1444
    :cond_2
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1
.end method

.method private displayNewRdsState(I)V
    .locals 4
    .parameter "rdsMode"

    .prologue
    .line 1455
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayNewRdsState  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1458
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1459
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1460
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1461
    return-void
.end method

.method private displayNewSignalStrength(I)V
    .locals 4
    .parameter "rssi"

    .prologue
    .line 1423
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayNewSignalStrength  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1426
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1427
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1428
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1429
    return-void
.end method


# virtual methods
.method public onAudioModeEvent(I)V
    .locals 4
    .parameter "audioMode"

    .prologue
    .line 1510
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioModeEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1514
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1515
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1516
    return-void
.end method

.method public onAudioPathEvent(I)V
    .locals 4
    .parameter "audioPath"

    .prologue
    .line 1521
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioPathEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1525
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1526
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1527
    return-void
.end method

.method public onEstimateNoiseFloorLevelEvent(I)V
    .locals 4
    .parameter "nfl"

    .prologue
    .line 1531
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEstimateNoiseFloorLevelEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mNfl:I
    invoke-static {v1, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2002(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1536
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    sput p1, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->LOW_SIGNAL_STRENGTH:I

    .line 1537
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    add-int/lit8 v1, p1, -0xf

    sput v1, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->MEDIUM_SIGNAL_STRENGTH:I

    .line 1538
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    add-int/lit8 v1, p1, -0x19

    sput v1, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->HIGH_SIGNAL_STRENGTH:I

    .line 1540
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1541
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1542
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1543
    return-void
.end method

.method public onLiveAudioQualityEvent(II)V
    .locals 4
    .parameter "rssi"
    .parameter "snr"

    .prologue
    .line 1548
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLiveAudioQualityEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewSignalStrength(I)V

    .line 1554
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1555
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1556
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1557
    return-void
.end method

.method public onRdsDataEvent(IILjava/lang/String;)V
    .locals 4
    .parameter "rdsDataType"
    .parameter "rdsIndex"
    .parameter "rdsText"

    .prologue
    .line 1562
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRdsDataEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    invoke-direct {p0, p1, p2, p3}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewRdsData(IILjava/lang/String;)V

    .line 1569
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1570
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1571
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1572
    return-void
.end method

.method public onRdsModeEvent(II)V
    .locals 4
    .parameter "rdsMode"
    .parameter "alternateFreqHopEnabled"

    .prologue
    .line 1576
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRdsModeEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    invoke-direct {p0, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewRdsState(I)V

    .line 1583
    invoke-direct {p0, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewAfState(I)V

    .line 1586
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1587
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1588
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1589
    return-void
.end method

.method public onSeekCompleteEvent(IIIZ)V
    .locals 8
    .parameter "freq"
    .parameter "rssi"
    .parameter "snr"
    .parameter "seeksuccess"

    .prologue
    const/16 v7, 0x16

    const/16 v6, 0xc

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1594
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeekCompleteEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1598
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z
    invoke-static {v1, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1599
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1600
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSeekCompleteEvent(frequencyUpdatePending= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->frequencyUpdatePending:Z
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    .line 1603
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v1, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1502(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1604
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I
    invoke-static {v1, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2202(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1605
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2200(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->updateStationSearch(I)V
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2300(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V

    .line 1680
    :goto_0
    return-void

    .line 1607
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p4, :cond_5

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v1

    if-ge v1, v6, :cond_5

    .line 1608
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z
    invoke-static {v1, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1609
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wangdapeng autoSearchChannel() mPendingFrequency = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wangdapeng autoSearchChannel() searchresult freq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v1

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v1

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mMinFreq:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1613
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissSeekAllProgressDialog()V

    .line 1614
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$502(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1615
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1616
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1617
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setAutoSearch(Z)V

    .line 1618
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->stationSearch(Z)V

    .line 1642
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1643
    .local v0, msg:Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->what:I

    .line 1644
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1676
    .end local v0           #msg:Landroid/os/Message;
    :goto_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1677
    .restart local v0       #msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1678
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1622
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v1, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1302(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1623
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingFrequency:I
    invoke-static {v1, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1502(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1624
    invoke-direct {p0, p1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewFrequency(II)V

    .line 1625
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wangdapeng setChannel()position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", freq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setChannel(I)V

    .line 1627
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/16 v2, 0x80

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingSearchDirection:I
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2202(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1630
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2404(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 1631
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissSeekAllProgressDialog()V

    .line 1632
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$502(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1633
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1634
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1635
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setAutoSearch(Z)V

    .line 1636
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->stationSearch(Z)V

    .line 1638
    :cond_4
    invoke-direct {p0, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewSignalStrength(I)V

    .line 1639
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v1

    invoke-direct {p0, v1, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewFrequency(II)V

    goto/16 :goto_1

    .line 1647
    :cond_5
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->stationSearch(Z)V

    .line 1648
    if-nez p4, :cond_7

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1649
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$502(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1650
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissSeekAllProgressDialog()V

    .line 1651
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setAutoSearch(Z)V

    .line 1652
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->stationSearchUpdatePending:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1653
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->getChannels()[I

    move-result-object v1

    aget v1, v1, v4

    if-nez v1, :cond_6

    .line 1654
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsAutoSearchFail:Z
    invoke-static {v1, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2702(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1656
    :cond_6
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1657
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1658
    .restart local v0       #msg:Landroid/os/Message;
    iput v7, v0, Landroid/os/Message;->what:I

    .line 1659
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1662
    .end local v0           #msg:Landroid/os/Message;
    :cond_7
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissSeekAllProgressDialog()V

    .line 1663
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    .line 1664
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v1, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1302(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1667
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mSeekInProgress:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1670
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFrequency:I
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v1

    invoke-direct {p0, v1, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewFrequency(II)V

    .line 1672
    invoke-direct {p0, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewSignalStrength(I)V

    goto/16 :goto_2
.end method

.method public onStatusEvent(IIIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
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
    const/4 v4, 0x0

    .line 1686
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStatusEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isFirstIn:I
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v1

    if-nez v1, :cond_0

    .line 1691
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v2, 0x1

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isFirstIn:I
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$902(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1693
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsUpdateFreq:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    if-nez p4, :cond_3

    .line 1695
    :cond_2
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsUpdateFreq:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2802(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1698
    :cond_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-boolean v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    if-eqz v1, :cond_4

    if-nez p4, :cond_4

    .line 1699
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->finish()V

    .line 1701
    :cond_4
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1703
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsAutoSearchFail:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2700(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1704
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mIsAutoSearchFail:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2702(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1705
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$502(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 1706
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissSeekAllProgressDialog()V

    .line 1707
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->setAutoSearch(Z)V

    .line 1708
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mView:Lcom/broadcom/bt/app/fm/rx/FmReceiveView;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmReceiveView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmReceiveView;->stationSearch(Z)V

    .line 1709
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearchIndex:I
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2402(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1719
    :cond_5
    invoke-direct {p0, p1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewFrequency(II)V

    .line 1722
    invoke-direct {p0, p2}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewSignalStrength(I)V

    .line 1725
    invoke-direct {p0, p9}, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->displayNewMutedState(Z)V

    .line 1731
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1732
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1733
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1734
    .end local v0           #msg:Landroid/os/Message;
    :goto_0
    return-void

    .line 1713
    :cond_6
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->autoSearch(Z)V
    invoke-static {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$2900(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)V

    goto :goto_0
.end method

.method public onVolumeEvent(II)V
    .locals 4
    .parameter "status"
    .parameter "volume"

    .prologue
    .line 1751
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVolumeEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1756
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1757
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1758
    return-void
.end method

.method public onWorldRegionEvent(I)V
    .locals 4
    .parameter "worldRegion"

    .prologue
    .line 1738
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWorldRegionEvent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mWorldRegion:I
    invoke-static {v1, p1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3002(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)I

    .line 1744
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1745
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1746
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$FmReceiverEventHandler;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->viewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1747
    return-void
.end method
