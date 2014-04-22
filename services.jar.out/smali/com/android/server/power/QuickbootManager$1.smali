.class Lcom/android/server/power/QuickbootManager$1;
.super Ljava/lang/Thread;
.source "QuickbootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/QuickbootManager;->enableRadio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/QuickbootManager;


# direct methods
.method constructor <init>(Lcom/android/server/power/QuickbootManager;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/server/power/QuickbootManager$1;->this$0:Lcom/android/server/power/QuickbootManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 296
    const/4 v5, 0x0

    .line 298
    .local v5, radioOn:Z
    const-string v8, "phone"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 302
    .local v4, phone:Lcom/android/internal/telephony/ITelephony;
    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 303
    const-string v8, "phone_msim"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v3

    .line 305
    .local v3, mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v3, :cond_4

    .line 306
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v8

    if-ge v1, v8, :cond_4

    .line 307
    if-eqz v5, :cond_1

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move v5, v6

    .line 308
    :goto_1
    invoke-interface {v3, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 309
    const-string v8, "QuickbootManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Turning on radio on Subscription :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/power/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v8, 0x1

    invoke-interface {v3, v8, v1}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v5, v7

    .line 307
    goto :goto_1

    .line 315
    .end local v1           #i:I
    .end local v3           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    move v5, v6

    .line 316
    :goto_2
    if-nez v5, :cond_4

    .line 317
    const-string v8, "QuickbootManager"

    const-string v9, "Turning on radio..."

    invoke-static {v8, v9}, Lcom/android/server/power/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v8, 0x1

    invoke-interface {v4, v8}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_4
    :goto_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    const/16 v8, 0x10

    if-ge v1, v8, :cond_9

    .line 327
    if-nez v5, :cond_8

    .line 329
    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 330
    const/4 v5, 0x1

    .line 331
    const-string v8, "phone_msim"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v3

    .line 333
    .restart local v3       #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v8

    if-ge v2, v8, :cond_8

    .line 334
    if-eqz v5, :cond_6

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eqz v8, :cond_6

    move v5, v6

    .line 333
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .end local v1           #i:I
    .end local v2           #j:I
    .end local v3           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_5
    move v5, v7

    .line 315
    goto :goto_2

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, ex:Landroid/os/RemoteException;
    const-string v8, "QuickbootManager"

    const-string v9, "RemoteException during radio shutdown"

    invoke-static {v8, v9}, Lcom/android/server/power/QuickbootManager$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const/4 v5, 0x1

    goto :goto_3

    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v2       #j:I
    .restart local v3       #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_6
    move v5, v7

    .line 334
    goto :goto_6

    .line 337
    .end local v2           #j:I
    .end local v3           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_7
    :try_start_2
    invoke-interface {v4}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v5

    .line 343
    :cond_8
    :goto_7
    if-eqz v5, :cond_a

    .line 344
    const-string v6, "QuickbootManager"

    const-string v7, "Radio is on."

    invoke-static {v6, v7}, Lcom/android/server/power/QuickbootManager$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_9
    return-void

    .line 339
    :catch_1
    move-exception v0

    .line 340
    .restart local v0       #ex:Landroid/os/RemoteException;
    const/4 v5, 0x1

    goto :goto_7

    .line 347
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_a
    const-wide/16 v8, 0x1f4

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method
