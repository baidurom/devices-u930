.class Lcom/broadcom/bt/app/fm/rx/FmRadio$7;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;->createRenameDlg(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

.field final synthetic val$mRenameEditText:Landroid/widget/EditText;

.field final synthetic val$nameStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iput-object p2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->val$mRenameEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->val$nameStr:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    iget-object v1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->val$mRenameEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$7;->val$nameStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->saveChannelName(Landroid/widget/EditText;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1230
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1237
    :goto_0
    return-void

    .line 1234
    :cond_0
    const-string v0, "FmRxRadio"

    const-string v1, "saveChannelName false "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
