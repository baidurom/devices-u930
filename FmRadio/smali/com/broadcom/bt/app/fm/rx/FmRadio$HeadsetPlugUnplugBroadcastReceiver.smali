.class public Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmRadio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeadsetPlugUnplugBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 1998
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 2001
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2002
    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2003
    .local v0, state:I
    const-string v2, "FmRxRadio"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HeadsetPlugUnplugBroadcastReceiver state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2004
    iget-object v2, p0, Lcom/broadcom/bt/app/fm/rx/FmRadio$HeadsetPlugUnplugBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadio;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    #calls: Lcom/broadcom/bt/app/fm/rx/FmRadio;->wiredHeadsetIsOn(Z)V
    invoke-static {v2, v1}, Lcom/broadcom/bt/app/fm/rx/FmRadio;->access$3100(Lcom/broadcom/bt/app/fm/rx/FmRadio;Z)V

    .line 2006
    .end local v0           #state:I
    :cond_1
    return-void
.end method
