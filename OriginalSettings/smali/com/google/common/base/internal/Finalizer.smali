.class public Lcom/google/common/base/internal/Finalizer;
.super Ljava/lang/Thread;
.source "Finalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/internal/Finalizer$1;,
        Lcom/google/common/base/internal/Finalizer$ShutDown;
    }
.end annotation


# static fields
.field private static final inheritableThreadLocals:Ljava/lang/reflect/Field;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final frqReference:Ljava/lang/ref/PhantomReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/PhantomReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/google/common/base/internal/Finalizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    .line 91
    invoke-static {}, Lcom/google/common/base/internal/Finalizer;->getInheritableThreadLocalsField()Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/internal/Finalizer;->inheritableThreadLocals:Ljava/lang/reflect/Field;

    return-void
.end method

.method private cleanUp(Ljava/lang/ref/Reference;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/base/internal/Finalizer$ShutDown;
        }
    .end annotation

    .prologue
    .line 137
    .local p1, reference:Ljava/lang/ref/Reference;,"Ljava/lang/ref/Reference<*>;"
    invoke-direct {p0}, Lcom/google/common/base/internal/Finalizer;->getFinalizeReferentMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 143
    .local v0, finalizeReferentMethod:Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->clear()V

    .line 145
    iget-object v2, p0, Lcom/google/common/base/internal/Finalizer;->frqReference:Ljava/lang/ref/PhantomReference;

    if-ne p1, v2, :cond_1

    .line 150
    new-instance v2, Lcom/google/common/base/internal/Finalizer$ShutDown;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/common/base/internal/Finalizer$ShutDown;-><init>(Lcom/google/common/base/internal/Finalizer$1;)V

    throw v2

    .line 154
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/google/common/base/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object p1

    if-nez p1, :cond_0

    .line 164
    return-void

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, t:Ljava/lang/Throwable;
    sget-object v2, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Error cleaning up after reference."

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getFinalizeReferentMethod()Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/base/internal/Finalizer$ShutDown;
        }
    .end annotation

    .prologue
    .line 170
    iget-object v2, p0, Lcom/google/common/base/internal/Finalizer;->finalizableReferenceClassReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 172
    .local v1, finalizableReferenceClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 181
    new-instance v2, Lcom/google/common/base/internal/Finalizer$ShutDown;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/common/base/internal/Finalizer$ShutDown;-><init>(Lcom/google/common/base/internal/Finalizer$1;)V

    throw v2

    .line 184
    :cond_0
    :try_start_0
    const-string v2, "finalizeReferent"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public static getInheritableThreadLocalsField()Ljava/lang/reflect/Field;
    .locals 3

    .prologue
    .line 192
    :try_start_0
    const-class v0, Ljava/lang/Thread;

    const-string v1, "inheritableThreadLocals"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    sget-object v0, Lcom/google/common/base/internal/Finalizer;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values."

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 200
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 127
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/common/base/internal/Finalizer;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/base/internal/Finalizer;->cleanUp(Ljava/lang/ref/Reference;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/common/base/internal/Finalizer$ShutDown; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    return-void
.end method
