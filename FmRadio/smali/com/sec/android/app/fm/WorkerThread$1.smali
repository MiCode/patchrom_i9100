.class Lcom/sec/android/app/fm/WorkerThread$1;
.super Ljava/lang/Object;
.source "WorkerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/WorkerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/WorkerThread;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/WorkerThread;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/sec/android/app/fm/WorkerThread$1;->this$0:Lcom/sec/android/app/fm/WorkerThread;

    iput-object p2, p0, Lcom/sec/android/app/fm/WorkerThread$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/sec/android/app/fm/MainActivity;->_instance:Lcom/sec/android/app/fm/MainActivity;

    iget-object v1, p0, Lcom/sec/android/app/fm/WorkerThread$1;->val$e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/MainActivity;->error(Ljava/lang/Exception;)V

    .line 133
    return-void
.end method
