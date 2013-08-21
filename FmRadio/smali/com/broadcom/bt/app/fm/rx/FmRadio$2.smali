.class Lcom/broadcom/bt/app/fm/rx/FmRadio$2;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


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
    .line 276
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5
    .parameter "focusChange"

    .prologue
    const/4 v4, 0x0

    .line 278
    const-string v1, "FmRxRadio"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAudioFocusChange focusChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 280
    .local v0, handler:Landroid/os/Handler;
    packed-switch p1, :pswitch_data_0

    .line 311
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 283
    :pswitch_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mFmReceiver:Lcom/broadcom/bt/service/fm/FmReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$400(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/service/fm/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/broadcom/bt/service/fm/FmReceiver;->getRadioIsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mInAutoSearching:Z
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$500(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;
    invoke-static {v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$600(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v2, 0x0

    #setter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mHeadsetPlugUnplugBroadcastReceiver:Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$602(Lcom/broadcom/bt/app/fm/rx/FmRadio;Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;)Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPowerOffRadio:Z

    .line 294
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/16 v2, 0x1e

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->receivehandler(I)V
    invoke-static {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V

    goto :goto_0

    .line 300
    :pswitch_2
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setCodecPath(I)V

    .line 301
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v1, v4}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setAudioPath(I)I

    goto :goto_0

    .line 306
    :pswitch_3
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setAudioPath(I)I

    .line 307
    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$2;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mPendingAudioPath:I
    invoke-static {v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$800(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setCodecPath(I)V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
