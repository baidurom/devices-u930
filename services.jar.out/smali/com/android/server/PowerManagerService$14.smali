.class Lcom/android/server/PowerManagerService$14;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3368
    iput-object p1, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;
    
    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;
    
    move-result-object v1
    
    monitor-enter v1

    .line 3372
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$2700(Lcom/android/server/PowerManagerService;)I
    
    move-result v0
    
    and-int/lit8 v0, v0, 0x4
    
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;
    
    #getter for: Lcom/android/server/PowerManagerService;->mButtonBrightnessOverride:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6601(Lcom/android/server/PowerManagerService;)I
    
    move-result v0
    
    if-gez v0, :cond_0
    
    .line 3373
    iget-object v0, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$4800(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    const/4 v2, 0x0
    
    invoke-virtual {v0, v2}, Lcom/android/server/LightsService$Light;->setBrightness(I)V
    
    iget-object v0, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;
    
    #getter for: Lcom/android/server/PowerManagerService;->mKeyboardVisible:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6602(Lcom/android/server/PowerManagerService;)Z

    move-result v0
    
    if-eqz v0, :cond_1
    
    iget-object v0, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/16 v2, -0xd
    
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$972(Lcom/android/server/PowerManagerService;I)I
    
    .line 3377
    iget-object v0, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;
    
    const/16 v2, -0xd
    
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$2672(Lcom/android/server/PowerManagerService;I)I
    
    :cond_0
    :goto_0
    monitor-exit v1

    .line 3378
    return-void

    .line 3375
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, -0x5
    
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$972(Lcom/android/server/PowerManagerService;I)I

    .line 2792
    iget-object v0, p0, Lcom/android/server/PowerManagerService$14;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, -0x5

    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$2672(Lcom/android/server/PowerManagerService;I)I

    goto :goto_0

    .line 3377
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method