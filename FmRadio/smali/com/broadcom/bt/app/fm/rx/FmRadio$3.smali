.class Lcom/broadcom/bt/app/fm/rx/FmRadio$3;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;->onCreate(Landroid/os/Bundle;)V
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
    .line 371
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 373
    const-string v0, "FmRxRadio"

    const-string v1, "mplugAlertDialog onclick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #getter for: Lcom/broadcom/bt/app/fm/rx/FmRadio;->isFirstIn:I
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$900(Lcom/broadcom/bt/app/fm/rx/FmRadio;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/16 v1, 0x1e

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->receivehandler(I)V
    invoke-static {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$700(Lcom/broadcom/bt/app/fm/rx/FmRadio;I)V

    .line 382
    :goto_0
    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->loadProgressDialog(I)V

    .line 380
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$3;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->finish()V

    goto :goto_0
.end method
