.class Lcom/android/server/ConnectivityService$WlanSettingsChangeObserver;
.super Landroid/database/ContentObserver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WlanSettingsChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 1
    .parameter

    .prologue
    .line 3481
    iput-object p1, p0, Lcom/android/server/ConnectivityService$WlanSettingsChangeObserver;->this$0:Lcom/android/server/ConnectivityService;

    .line 3482
    #getter for: Lcom/android/server/ConnectivityService;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3483
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 3486
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3487
    iget-object v0, p0, Lcom/android/server/ConnectivityService$WlanSettingsChangeObserver;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->onWlanPrefered()V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)V

    .line 3489
    return-void
.end method
