.class public Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmRadioSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EndFMSettingsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings$EndFMSettingsBroadcastReceiver;->this$0:Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;

    invoke-virtual {v0}, Lcom/broadcom/bt/app/fm/rx/FmRadioSettings;->finish()V

    .line 139
    :cond_0
    return-void
.end method
