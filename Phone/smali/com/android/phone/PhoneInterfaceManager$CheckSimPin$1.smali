.class Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;)V
    .locals 0
    .parameter

    .prologue
    .line 1436
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 1439
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1440
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1450
    :goto_0
    return-void

    .line 1442
    :pswitch_0
    const-string v2, "PhoneInterfaceManager"

    const-string v3, "SUPPLY_PIN_COMPLETE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    monitor-enter v2

    .line 1444
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    :goto_1
    #setter for: Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mResult:Z
    invoke-static {v3, v1}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->access$502(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z

    .line 1445
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    const/4 v3, 0x1

    #setter for: Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->mDone:Z
    invoke-static {v1, v3}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->access$602(Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;Z)Z

    .line 1446
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin$1;->this$0:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1447
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1444
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1440
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
