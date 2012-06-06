.class Lcom/google/common/collect/MapMaker$StrategyImpl;
.super Ljava/lang/Object;
.source "MapMaker.java"

# interfaces
.implements Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StrategyImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;,
        Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy",
        "<TK;TV;",
        "Lcom/google/common/collect/MapMaker$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final expirationNanos:J

.field internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyStrength:Lcom/google/common/collect/MapMaker$Strength;

.field final map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/google/common/collect/MapMaker$Strength;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V
    .locals 2
    .parameter "maker"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p2, computer:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TK;+TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 481
    #getter for: Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->access$100(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 482
    #getter for: Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->access$200(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 483
    #getter for: Lcom/google/common/collect/MapMaker;->expirationNanos:J
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->access$300(Lcom/google/common/collect/MapMaker;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    .line 485
    #getter for: Lcom/google/common/collect/MapMaker;->builder:Lcom/google/common/collect/CustomConcurrentHashMap$Builder;
    invoke-static {p1}, Lcom/google/common/collect/MapMaker;->access$400(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/CustomConcurrentHashMap$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;->buildComputingMap(Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 486
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 745
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    :try_start_0
    sget-object v1, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->keyStrength:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 746
    sget-object v1, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->valueStrength:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 747
    sget-object v1, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->expirationNanos:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 748
    sget-object v1, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->internals:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 749
    sget-object v1, Lcom/google/common/collect/MapMaker$StrategyImpl$Fields;->map:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 707
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 709
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 715
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 717
    return-void
.end method


# virtual methods
.method public compute(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/base/Function;)Ljava/lang/Object;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 593
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p3, computer:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TK;+TV;>;"
    :try_start_0
    invoke-interface {p3, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/common/collect/ComputationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 606
    .local v3, value:Ljava/lang/Object;,"TV;"
    if-nez v3, :cond_0

    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null for key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, message:Ljava/lang/String;
    new-instance v4, Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;

    invoke-direct {v4, v1}, Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, v4}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ValueReference;)V

    .line 611
    new-instance v4, Lcom/google/common/collect/NullOutputException;

    invoke-direct {v4, v1}, Lcom/google/common/collect/NullOutputException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 594
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Object;,"TV;"
    :catch_0
    move-exception v0

    .line 597
    .local v0, e:Lcom/google/common/collect/ComputationException;
    new-instance v4, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;

    invoke-virtual {v0}, Lcom/google/common/collect/ComputationException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v4}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ValueReference;)V

    .line 599
    throw v0

    .line 600
    .end local v0           #e:Lcom/google/common/collect/ComputationException;
    :catch_1
    move-exception v2

    .line 601
    .local v2, t:Ljava/lang/Throwable;
    new-instance v4, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;

    invoke-direct {v4, v2}, Lcom/google/common/collect/MapMaker$ComputationExceptionReference;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, p2, v4}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ValueReference;)V

    .line 603
    new-instance v4, Lcom/google/common/collect/ComputationException;

    invoke-direct {v4, v2}, Lcom/google/common/collect/ComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 613
    .end local v2           #t:Ljava/lang/Throwable;
    .restart local v3       #value:Ljava/lang/Object;,"TV;"
    :cond_0
    invoke-virtual {p0, p2, v3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)V

    .line 615
    return-object v3
.end method

.method public bridge synthetic compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/base/Function;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 463
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p2, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .end local p2
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->compute(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/base/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copyEntry(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 547
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, original:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p3, newNext:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p2}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v2

    .line 548
    .local v2, valueReference:Lcom/google/common/collect/MapMaker$ValueReference;,"Lcom/google/common/collect/MapMaker$ValueReference<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/MapMaker;->access$500()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 549
    invoke-interface {p2}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getHash()I

    move-result v3

    invoke-virtual {p0, p1, v3, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    .line 551
    .local v0, newEntry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    new-instance v3, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;

    invoke-direct {v3, p0, p2, v0}, Lcom/google/common/collect/MapMaker$StrategyImpl$FutureValueReference;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ReferenceEntry;)V

    invoke-interface {v0, v3}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMaker$ValueReference;)V

    move-object v1, v0

    .line 558
    .end local v0           #newEntry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local v1, newEntry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    :goto_0
    return-object v1

    .line 555
    .end local v1           #newEntry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    :cond_0
    invoke-interface {p2}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getHash()I

    move-result v3

    invoke-virtual {p0, p1, v3, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    .line 557
    .restart local v0       #newEntry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {v2, v0}, Lcom/google/common/collect/MapMaker$ValueReference;->copyFor(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMaker$ValueReference;)V

    move-object v1, v0

    .line 558
    .end local v0           #newEntry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .restart local v1       #newEntry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    goto :goto_0
.end method

.method public bridge synthetic copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 463
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p2, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .end local p2
    check-cast p3, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->copyEntry(Ljava/lang/Object;Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, a:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter "b"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, a:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHash(Lcom/google/common/collect/MapMaker$ReferenceEntry;)I
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getHash()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getHash(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 463
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getHash(Lcom/google/common/collect/MapMaker$ReferenceEntry;)I

    move-result v0

    return v0
.end method

.method public getKey(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 463
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getKey(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 692
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getNext()Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 463
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getNext(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 585
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    .line 586
    .local v0, valueReference:Lcom/google/common/collect/MapMaker$ValueReference;,"Lcom/google/common/collect/MapMaker$ValueReference<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/collect/MapMaker$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 463
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->getValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashKey(Ljava/lang/Object;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 529
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMaker$Strength;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .locals 2
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 542
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, next:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    iget-object v1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/common/collect/MapMaker$Strength;->newEntry(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 463
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p3, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$StrategyImpl;->newEntry(Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 507
    .local v0, keyReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TK;>;"
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 508
    .local v1, valueReference:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<TV;>;"
    sget-object v2, Lcom/google/common/collect/ExpirationTimer;->instance:Ljava/util/Timer;

    new-instance v3, Lcom/google/common/collect/MapMaker$StrategyImpl$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/common/collect/MapMaker$StrategyImpl$1;-><init>(Lcom/google/common/collect/MapMaker$StrategyImpl;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 518
    return-void
.end method

.method public setInternals(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 697
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;,"Lcom/google/common/collect/CustomConcurrentHashMap$Internals<TK;TV;Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;>;"
    iput-object p1, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->internals:Lcom/google/common/collect/CustomConcurrentHashMap$Internals;

    .line 698
    return-void
.end method

.method public setValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;->referenceValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValueReference(Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ValueReference;)V

    .line 491
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker$StrategyImpl;->expirationNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 492
    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/common/collect/MapMaker$StrategyImpl;->scheduleRemoval(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 494
    :cond_0
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 463
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMaker$StrategyImpl;->setValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)V

    return-void
.end method

.method setValueReference(Lcom/google/common/collect/MapMaker$ReferenceEntry;Lcom/google/common/collect/MapMaker$ValueReference;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    .local p2, valueReference:Lcom/google/common/collect/MapMaker$ValueReference;,"Lcom/google/common/collect/MapMaker$ValueReference<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/MapMaker;->access$500()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 625
    .local v0, notifyOthers:Z
    :goto_0
    invoke-interface {p1, p2}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->setValueReference(Lcom/google/common/collect/MapMaker$ValueReference;)V

    .line 626
    if-eqz v0, :cond_0

    .line 627
    monitor-enter p1

    .line 628
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 629
    monitor-exit p1

    .line 631
    :cond_0
    return-void

    .line 624
    .end local v0           #notifyOthers:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 629
    .restart local v0       #notifyOthers:Z
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 568
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    .local p1, entry:Lcom/google/common/collect/MapMaker$ReferenceEntry;,"Lcom/google/common/collect/MapMaker$ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    .line 569
    .local v0, valueReference:Lcom/google/common/collect/MapMaker$ValueReference;,"Lcom/google/common/collect/MapMaker$ValueReference<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/MapMaker;->access$500()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 570
    monitor-enter p1

    .line 572
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/common/collect/MapMaker$ReferenceEntry;->getValueReference()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    invoke-static {}, Lcom/google/common/collect/MapMaker;->access$500()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 573
    invoke-virtual {p1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 575
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :cond_1
    invoke-interface {v0}, Lcom/google/common/collect/MapMaker$ValueReference;->waitForValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic waitForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 463
    .local p0, this:Lcom/google/common/collect/MapMaker$StrategyImpl;,"Lcom/google/common/collect/MapMaker$StrategyImpl<TK;TV;>;"
    check-cast p1, Lcom/google/common/collect/MapMaker$ReferenceEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;->waitForValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
