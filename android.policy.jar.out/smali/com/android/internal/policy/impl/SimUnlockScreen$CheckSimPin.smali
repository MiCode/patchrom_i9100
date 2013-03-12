.class abstract Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
.super Ljava/lang/Thread;
.source "SimUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "pin"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    .line 239
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(Z)V
.end method

.method public run()V
    .locals 4

    .prologue
    .line 248
    :try_start_0
    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->isMultiSIMDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/policy/impl/sec/MultiSimUtils;->getCurrentPinLockSlot()I

    move-result v2

    if-lez v2, :cond_0

    .line 250
    const-string v2, "phone2"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v1

    .line 253
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;Z)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    .line 278
    .end local v1           #result:Z
    :goto_0
    return-void

    .line 261
    :cond_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z

    move-result v1

    .line 264
    .restart local v1       #result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$2;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;Z)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    .end local v1           #result:Z
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;->this$0:Lcom/android/internal/policy/impl/SimUnlockScreen;

    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin$3;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/SimUnlockScreen;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
