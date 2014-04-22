.class final Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QuickbootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3278
    iput-object p1, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3278
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3281
    iget-object v0, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 3282
    :try_start_0
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3283
    iget-object v0, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v2, v2, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    iput-boolean v2, v0, Lcom/android/server/PowerManagerService;->mAnimateScreenLightsOrigin:Z

    .line 3284
    iget-object v0, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    .line 3297
    :cond_0
    :goto_0
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Now mAnimateScreenLights = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v3, v3, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    monitor-exit v1

    .line 3299
    return-void

    .line 3285
    :cond_1
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_BOOT_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3286
    iget-object v0, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)V

    .line 3287
    iget-object v0, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v2, v2, Lcom/android/server/PowerManagerService;->mAnimateScreenLightsOrigin:Z

    iput-boolean v2, v0, Lcom/android/server/PowerManagerService;->mAnimateScreenLights:Z

    goto :goto_0

    .line 3298
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3288
    :cond_2
    :try_start_1
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_BOOT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3289
    const-string v0, "PowerManagerService"

    const-string v2, "delay 700ms to set backlight"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    const/4 v0, 0x1

    #calls: Lcom/android/server/PowerManagerService;->nativeSetScreenState(Z)I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6804(Z)I

    .line 3291
    iget-object v0, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4000(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/PowerManagerService$QbBrightnessTask;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/PowerManagerService$QbBrightnessTask;-><init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V

    const-wide/16 v3, 0x2bc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3292
    :cond_3
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_SCREENON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3293
    iget-object v0, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)V

    goto :goto_0

    .line 3294
    :cond_4
    const-string v0, "android.intent.action.ACTION_QUICKBOOT_SCREENOFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3295
    iget-object v0, p0, Lcom/android/server/PowerManagerService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/PowerManagerService;->goToSleepWithReason(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
