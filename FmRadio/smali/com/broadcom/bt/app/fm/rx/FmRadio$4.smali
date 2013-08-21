.class Lcom/broadcom/bt/app/fm/rx/FmRadio$4;
.super Landroid/content/BroadcastReceiver;
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
    .line 533
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x1f

    const/16 v7, 0x1e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 536
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, action:Ljava/lang/String;
    const-string v2, "command"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, cmd:Ljava/lang/String;
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMediaStateReceiver action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cmd = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    const-string v2, "state"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, v6, :cond_1

    .line 544
    const-string v2, "FmRxRadio"

    const-string v3, "====ACTION_AIRPLANE_MODE_CHANGED==true\n"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInAirplaneMode:Z
    invoke-static {v2, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$002(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 546
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->receivehandler(I)V
    invoke-static {v2, v7}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInAirplaneMode:Z
    invoke-static {v2, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$002(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    goto :goto_0

    .line 551
    :cond_2
    invoke-static {}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 552
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/16 v3, 0x23

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->receivehandler(I)V
    invoke-static {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V

    goto :goto_0

    .line 553
    :cond_3
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 554
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->receivehandler(I)V
    invoke-static {v2, v8}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V

    goto :goto_0

    .line 555
    :cond_4
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 556
    const-string v2, "alarmingpause"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 557
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->receivehandler(I)V
    invoke-static {v2, v8}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V

    goto :goto_0

    .line 558
    :cond_5
    const-string v2, "play"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 559
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/16 v3, 0x20

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->receivehandler(I)V
    invoke-static {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V

    goto :goto_0

    .line 560
    :cond_6
    const-string v2, "zte.com.cn.fm.ACTION_END"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 561
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 562
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;
    invoke-static {v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 563
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v3, 0x0

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;
    invoke-static {v2, v3}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;)Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    .line 565
    :cond_7
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->receivehandler(I)V
    invoke-static {v2, v7}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V

    goto :goto_0

    .line 567
    :cond_8
    const-string v2, "zte.com.cn.fm.MOVE_BACKGROUND_FROM_SETTING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInBackground:Z
    invoke-static {v2, v6}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1102(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    .line 570
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$4;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInSettings:Z
    invoke-static {v2, v5}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$1202(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)Z

    goto/16 :goto_0
.end method
