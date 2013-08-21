.class Lcom/broadcom/bt/app/fm/rx/fmtest$1;
.super Landroid/os/Handler;
.source "fmtest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/fmtest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/fmtest;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$1;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 64
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 66
    :pswitch_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$1;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/broadcom/bt/app/fm/rx/fmtest;->updateScreen(I)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$000(Lcom/broadcom/bt/app/fm/rx/fmtest;I)V

    goto :goto_0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$1;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->isHeadSetOn:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$100(Lcom/broadcom/bt/app/fm/rx/fmtest;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$1;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #getter for: Lcom/broadcom/bt/app/fm/rx/fmtest;->isHeadSetOn:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$100(Lcom/broadcom/bt/app/fm/rx/fmtest;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$1;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #calls: Lcom/broadcom/bt/app/fm/rx/fmtest;->enableTest()V
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$200(Lcom/broadcom/bt/app/fm/rx/fmtest;)V

    .line 74
    :goto_1
    const-string v0, "fm_route=fm_headset"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$1;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    const/4 v1, 0x0

    #calls: Lcom/broadcom/bt/app/fm/rx/fmtest;->enableFreqButtons(Z)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$300(Lcom/broadcom/bt/app/fm/rx/fmtest;Z)V

    goto :goto_1

    .line 77
    :pswitch_2
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/fmtest$1;->this$0:Lcom/broadcom/bt/app/fm/rx/fmtest;

    #calls: Lcom/broadcom/bt/app/fm/rx/fmtest;->retryPendingCommands()V
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/fmtest;->access$400(Lcom/broadcom/bt/app/fm/rx/fmtest;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
