.class public final Lcom/google/common/collect/MapMaker;
.super Ljava/lang/Object;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/MapMaker$StrongValueReference;,
        Lcom/google/common/collect/MapMaker$SoftValueReference;,
        Lcom/google/common/collect/MapMaker$WeakValueReference;,
        Lcom/google/common/collect/MapMaker$LinkedWeakEntry;,
        Lcom/google/common/collect/MapMaker$WeakEntry;,
        Lcom/google/common/collect/MapMaker$LinkedSoftEntry;,
        Lcom/google/common/collect/MapMaker$SoftEntry;,
        Lcom/google/common/collect/MapMaker$LinkedStrongEntry;,
        Lcom/google/common/collect/MapMaker$StrongEntry;,
        Lcom/google/common/collect/MapMaker$ReferenceEntry;,
        Lcom/google/common/collect/MapMaker$QueueHolder;,
        Lcom/google/common/collect/MapMaker$ComputationExceptionReference;,
        Lcom/google/common/collect/MapMaker$NullOutputExceptionReference;,
        Lcom/google/common/collect/MapMaker$ValueReference;,
        Lcom/google/common/collect/MapMaker$StrategyImpl;,
        Lcom/google/common/collect/MapMaker$Strength;
    }
.end annotation


# static fields
.field private static final COMPUTING:Lcom/google/common/collect/MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final builder:Lcom/google/common/collect/CustomConcurrentHashMap$Builder;

.field private expirationNanos:J

.field private keyStrength:Lcom/google/common/collect/MapMaker$Strength;

.field private useCustomMap:Z

.field private valueStrength:Lcom/google/common/collect/MapMaker$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 774
    new-instance v0, Lcom/google/common/collect/MapMaker$1;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker$1;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMaker;->COMPUTING:Lcom/google/common/collect/MapMaker$ValueReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    sget-object v0, Lcom/google/common/collect/MapMaker$Strength;->STRONG:Lcom/google/common/collect/MapMaker$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 100
    sget-object v0, Lcom/google/common/collect/MapMaker$Strength;->STRONG:Lcom/google/common/collect/MapMaker$Strength;

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/collect/MapMaker;->expirationNanos:J

    .line 103
    new-instance v0, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/CustomConcurrentHashMap$Builder;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMaker;->builder:Lcom/google/common/collect/CustomConcurrentHashMap$Builder;

    .line 110
    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/MapMaker$Strength;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->valueStrength:Lcom/google/common/collect/MapMaker$Strength;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/MapMaker;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/google/common/collect/MapMaker;->expirationNanos:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/MapMaker;)Lcom/google/common/collect/CustomConcurrentHashMap$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->builder:Lcom/google/common/collect/CustomConcurrentHashMap$Builder;

    return-object v0
.end method

.method static synthetic access$500()Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/common/collect/MapMaker;->COMPUTING:Lcom/google/common/collect/MapMaker$ValueReference;

    return-object v0
.end method

.method static synthetic access$600()Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/google/common/collect/MapMaker;->computing()Lcom/google/common/collect/MapMaker$ValueReference;

    move-result-object v0

    return-object v0
.end method

.method private static computing()Lcom/google/common/collect/MapMaker$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 794
    sget-object v0, Lcom/google/common/collect/MapMaker;->COMPUTING:Lcom/google/common/collect/MapMaker$ValueReference;

    return-object v0
.end method

.method private setKeyStrength(Lcom/google/common/collect/MapMaker$Strength;)Lcom/google/common/collect/MapMaker;
    .locals 3
    .parameter "strength"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    sget-object v1, Lcom/google/common/collect/MapMaker$Strength;->STRONG:Lcom/google/common/collect/MapMaker$Strength;

    if-eq v0, v1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key strength was already set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_0
    iput-object p1, p0, Lcom/google/common/collect/MapMaker;->keyStrength:Lcom/google/common/collect/MapMaker$Strength;

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/MapMaker;->useCustomMap:Z

    .line 196
    return-object p0
.end method


# virtual methods
.method public makeComputingMap(Lcom/google/common/base/Function;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/base/Function",
            "<-TK;+TV;>;)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, computingFunction:Lcom/google/common/base/Function;,"Lcom/google/common/base/Function<-TK;+TV;>;"
    new-instance v0, Lcom/google/common/collect/MapMaker$StrategyImpl;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/MapMaker$StrategyImpl;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/base/Function;)V

    iget-object v0, v0, Lcom/google/common/collect/MapMaker$StrategyImpl;->map:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public weakKeys()Lcom/google/common/collect/MapMaker;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lcom/google/common/collect/MapMaker$Strength;->WEAK:Lcom/google/common/collect/MapMaker$Strength;

    invoke-direct {p0, v0}, Lcom/google/common/collect/MapMaker;->setKeyStrength(Lcom/google/common/collect/MapMaker$Strength;)Lcom/google/common/collect/MapMaker;

    move-result-object v0

    return-object v0
.end method
