.class public Lcom/android/internal/telephony/NonstaticTelephonyFeature;
.super Ljava/lang/Object;
.source "NonstaticTelephonyFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;
    }
.end annotation


# static fields
.field private static final EVENT_GET_FEATURE_DONE:I = 0x1

.field private static final MAX_RETRIES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NonstaticTelephonyFeature"

.field private static mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private static sFeatureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    .line 36
    sput-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getInstance()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-nez v0, :cond_1

    .line 138
    const-string v0, "NonstaticTelephonyFeature"

    const-string v1, "NonstaticTelephonyFeature not prepared - most likely RIL object has not been created yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    return-object v0

    .line 140
    :cond_1
    const-string v0, "NonstaticTelephonyFeature"

    const-string v1, "NonstaticTelephonyFeature not prepared - trying again anyway..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0}, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->newInstance(Lcom/android/internal/telephony/CommandsInterface;)Ljava/util/Map;

    goto :goto_0
.end method

.method public static newInstance(Lcom/android/internal/telephony/CommandsInterface;)Ljava/util/Map;
    .locals 23
    .parameter "cm"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/CommandsInterface;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    sput-object p0, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    .line 74
    sget-object v20, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    if-nez v20, :cond_2

    .line 75
    const-string v20, "NonstaticTelephonyFeature"

    const-string/jumbo v21, "newInstance()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v9, v0, :cond_2

    .line 78
    new-instance v8, Landroid/os/HandlerThread;

    const-string v20, "NonstaticTelephonyFeature"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 79
    .local v8, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v8}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v19, Ljava/util/concurrent/CountDownLatch;

    const/16 v20, 0x1

    invoke-direct/range {v19 .. v20}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 82
    .local v19, startLatch:Ljava/util/concurrent/CountDownLatch;
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 84
    .local v5, doneLatch:Ljava/util/concurrent/CountDownLatch;
    new-instance v4, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1, v5}, Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;-><init>(ILjava/util/concurrent/CountDownLatch;Ljava/util/concurrent/CountDownLatch;)V

    .line 85
    .local v4, cb:Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v7, v0, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 87
    .local v7, handler:Landroid/os/Handler;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v15, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "getFeatures"

    aput-object v21, v15, v20

    .line 89
    .local v15, req:[Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v16

    .line 90
    .local v16, resp:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/android/internal/telephony/CommandsInterface;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 92
    const/4 v6, 0x0

    .line 95
    .local v6, gotResult:Z
    const-wide/16 v20, 0x1f4

    :try_start_0
    sget-object v22, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v19 .. v22}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 102
    :goto_1
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    .line 104
    .local v2, ar:Landroid/os/AsyncResult;
    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 105
    invoke-virtual {v8}, Landroid/os/HandlerThread;->quit()Z

    .line 107
    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    iget-object v0, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    .line 108
    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v17, v20

    check-cast v17, [Ljava/lang/String;

    .line 110
    .local v17, ret:[Ljava/lang/String;
    const-string v20, "NonstaticTelephonyFeature"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Successfully received features: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " entries"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v14, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v3, v17

    .local v3, arr$:[Ljava/lang/String;
    array-length v13, v3

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_2
    if-ge v10, v13, :cond_1

    aget-object v18, v3, v10

    .line 114
    .local v18, s:Ljava/lang/String;
    const-string v20, ":"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 115
    .local v12, kv:[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v21, v12, v20

    array-length v0, v12

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    const/16 v20, 0x1

    aget-object v20, v12, v20

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v14, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 96
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #kv:[Ljava/lang/String;
    .end local v13           #len$:I
    .end local v14           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17           #ret:[Ljava/lang/String;
    .end local v18           #s:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 97
    .local v11, ignore:Ljava/lang/InterruptedException;
    const-string v20, "NonstaticTelephonyFeature"

    const-string v21, "Unexpected InterruptedException while waiting for NonstaticTelephonyFeatureThread, handleMessage()"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 115
    .end local v11           #ignore:Ljava/lang/InterruptedException;
    .restart local v2       #ar:Landroid/os/AsyncResult;
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v12       #kv:[Ljava/lang/String;
    .restart local v13       #len$:I
    .restart local v14       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v17       #ret:[Ljava/lang/String;
    .restart local v18       #s:Ljava/lang/String;
    :cond_0
    const-string/jumbo v20, "true"

    goto :goto_3

    .line 118
    .end local v12           #kv:[Ljava/lang/String;
    .end local v18           #s:Ljava/lang/String;
    :cond_1
    invoke-static {v14}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v20

    sput-object v20, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    .line 132
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #cb:Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;
    .end local v5           #doneLatch:Ljava/util/concurrent/CountDownLatch;
    .end local v6           #gotResult:Z
    .end local v7           #handler:Landroid/os/Handler;
    .end local v8           #handlerThread:Landroid/os/HandlerThread;
    .end local v9           #i:I
    .end local v10           #i$:I
    .end local v13           #len$:I
    .end local v14           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v15           #req:[Ljava/lang/String;
    .end local v16           #resp:Landroid/os/Message;
    .end local v17           #ret:[Ljava/lang/String;
    .end local v19           #startLatch:Ljava/util/concurrent/CountDownLatch;
    :cond_2
    sget-object v20, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->sFeatureMap:Ljava/util/Map;

    return-object v20

    .line 122
    .restart local v2       #ar:Landroid/os/AsyncResult;
    .restart local v4       #cb:Lcom/android/internal/telephony/NonstaticTelephonyFeature$MsgNotifyCallback;
    .restart local v5       #doneLatch:Ljava/util/concurrent/CountDownLatch;
    .restart local v6       #gotResult:Z
    .restart local v7       #handler:Landroid/os/Handler;
    .restart local v8       #handlerThread:Landroid/os/HandlerThread;
    .restart local v9       #i:I
    .restart local v15       #req:[Ljava/lang/String;
    .restart local v16       #resp:Landroid/os/Message;
    .restart local v19       #startLatch:Ljava/util/concurrent/CountDownLatch;
    :cond_3
    const-string v20, "NonstaticTelephonyFeature"

    const-string v21, "getFeatures failed, retrying after timeout..."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-wide/16 v20, 0x1f4

    :try_start_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 126
    :catch_1
    move-exception v20

    goto :goto_4
.end method
