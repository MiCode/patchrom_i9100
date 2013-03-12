.class final Lcom/android/server/ThermistorObserver$SiopIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThermistorObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ThermistorObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SiopIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ThermistorObserver;


# direct methods
.method private constructor <init>(Lcom/android/server/ThermistorObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ThermistorObserver;Lcom/android/server/ThermistorObserver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;-><init>(Lcom/android/server/ThermistorObserver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 287
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thermistor Intent Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v2, p0, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    monitor-enter v2

    .line 290
    :try_start_0
    const-string v1, "cp_siop_level"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 291
    .local v0, currentLevelFromCP:I
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    #getter for: Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I
    invoke-static {v1}, Lcom/android/server/ThermistorObserver;->access$300(Lcom/android/server/ThermistorObserver;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 292
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    invoke-virtual {v1, v0}, Lcom/android/server/ThermistorObserver;->changeState(I)V

    .line 293
    iget-object v1, p0, Lcom/android/server/ThermistorObserver$SiopIntentReceiver;->this$0:Lcom/android/server/ThermistorObserver;

    #setter for: Lcom/android/server/ThermistorObserver;->mLastLevelFromCP:I
    invoke-static {v1, v0}, Lcom/android/server/ThermistorObserver;->access$302(Lcom/android/server/ThermistorObserver;I)I

    .line 294
    invoke-static {}, Lcom/android/server/ThermistorObserver;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SiopIntentReceiver : currentLevelFromCP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    monitor-exit v2

    .line 297
    return-void

    .line 296
    .end local v0           #currentLevelFromCP:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
