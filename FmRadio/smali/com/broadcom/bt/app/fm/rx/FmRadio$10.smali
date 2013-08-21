.class Lcom/broadcom/bt/app/fm/rx/FmRadio$10;
.super Ljava/lang/Object;
.source "FmRadio.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;->loadSeekALLProgressDialog()V
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
    .line 2203
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$10;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2205
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$10;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->stopSeekAll()V
    invoke-static {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3300(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V

    .line 2206
    return-void
.end method
