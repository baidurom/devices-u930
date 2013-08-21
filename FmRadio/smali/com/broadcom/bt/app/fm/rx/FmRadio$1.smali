.class Lcom/broadcom/bt/app/fm/rx/FmRadio$1;
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
    .line 254
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 259
    :pswitch_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isInAirplaneMode:Z
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$000(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isPhoneOn()Z
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$100(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const-string v1, "fm_route=fm_headset"

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->setParameters(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$200(Lcom/broadcom/bt/app/fm/rx/FmRadio;Ljava/lang/String;)V

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->mplugAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 263
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->dismissProgressDialog()V

    goto :goto_0

    .line 268
    :pswitch_1
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$1;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->setAudioPath(I)I

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
