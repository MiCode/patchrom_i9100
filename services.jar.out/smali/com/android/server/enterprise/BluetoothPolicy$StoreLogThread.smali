.class Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;
.super Ljava/lang/Thread;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/BluetoothPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StoreLogThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/BluetoothPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/BluetoothPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;->this$0:Lcom/android/server/enterprise/BluetoothPolicy;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 746
    const/4 v4, 0x0

    .line 749
    .local v4, log:Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;->this$0:Lcom/android/server/enterprise/BluetoothPolicy;

    #getter for: Lcom/android/server/enterprise/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v7}, Lcom/android/server/enterprise/BluetoothPolicy;->access$100(Lcom/android/server/enterprise/BluetoothPolicy;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 750
    if-eqz v4, :cond_0

    .line 751
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 752
    .local v1, calendar:Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 753
    .local v5, time:J
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 754
    .local v2, cv:Landroid/content/ContentValues;
    const-string v7, "time"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v7, "log"

    invoke-virtual {v2, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StoreLogThread - cv: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v7, p0, Lcom/android/server/enterprise/BluetoothPolicy$StoreLogThread;->this$0:Lcom/android/server/enterprise/BluetoothPolicy;

    #getter for: Lcom/android/server/enterprise/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;
    invoke-static {v7}, Lcom/android/server/enterprise/BluetoothPolicy;->access$200(Lcom/android/server/enterprise/BluetoothPolicy;)Lcom/android/server/enterprise/EdmStorageProvider;

    move-result-object v7

    const-string v8, "BluetoothLogTable"

    invoke-virtual {v7, v8, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 758
    const-string v7, "BluetoothPolicyService"

    const-string v8, "StoreLogThread - Failed on inserting log"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 761
    .end local v1           #calendar:Ljava/util/Calendar;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v5           #time:J
    :catch_0
    move-exception v3

    .line 762
    .local v3, iex:Ljava/lang/InterruptedException;
    const-string v7, "BluetoothPolicyService"

    const-string v8, "StoreLogThread - InterruptedException on take"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
