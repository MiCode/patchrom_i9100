.class abstract enum Lcom/google/common/collect/MapMaker$Strength;
.super Ljava/lang/Enum;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Strength"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/collect/MapMaker$Strength;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/MapMaker$Strength;

.field public static final enum SOFT:Lcom/google/common/collect/MapMaker$Strength;

.field public static final enum STRONG:Lcom/google/common/collect/MapMaker$Strength;

.field public static final enum WEAK:Lcom/google/common/collect/MapMaker$Strength;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    new-instance v0, Lcom/google/common/collect/MapMaker$Strength$1;

    const-string v1, "WEAK"

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/MapMaker$Strength$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$Strength;->WEAK:Lcom/google/common/collect/MapMaker$Strength;

    .line 371
    new-instance v0, Lcom/google/common/collect/MapMaker$Strength$2;

    const-string v1, "SOFT"

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/MapMaker$Strength$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$Strength;->SOFT:Lcom/google/common/collect/MapMaker$Strength;

    .line 400
    new-instance v0, Lcom/google/common/collect/MapMaker$Strength$3;

    const-string v1, "STRONG"

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/MapMaker$Strength$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/MapMaker$Strength;->STRONG:Lcom/google/common/collect/MapMaker$Strength;

    .line 341
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/common/collect/MapMaker$Strength;

    sget-object v1, Lcom/google/common/collect/MapMaker$Strength;->WEAK:Lcom/google/common/collect/MapMaker$Strength;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/collect/MapMaker$Strength;->SOFT:Lcom/google/common/collect/MapMaker$Strength;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/collect/MapMaker$Strength;->STRONG:Lcom/google/common/collect/MapMaker$Strength;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/common/collect/MapMaker$Strength;->$VALUES:[Lcom/google/common/collect/MapMaker$Strength;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/MapMaker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMaker$Strength;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/MapMaker$Strength;
    .locals 1
    .parameter

    .prologue
    .line 341
    const-class v0, Lcom/google/common/collect/MapMaker$Strength;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/MapMaker$Strength;

    return-object v0
.end method

.method public static values()[Lcom/google/common/collect/MapMaker$Strength;
    .locals 1

    .prologue
    .line 341
    sget-object v0, Lcom/google/common/collect/MapMaker$Strength;->$VALUES:[Lcom/google/common/collect/MapMaker$Strength;

    invoke-virtual {v0}, [Lcom/google/common/collect/MapMaker$Strength;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/MapMaker$Strength;

    return-object v0
.end method


# virtual methods
.method abstract equal(Ljava/lang/Object;Ljava/lang/Object;)Z
.end method

.method abstract hash(Ljava/lang/Object;)I
.end method

.method abstract newEntry(Lcom/google/common/collect/CustomConcurrentHashMap$Internals;Ljava/lang/Object;ILcom/google/common/collect/MapMaker$ReferenceEntry;)Lcom/google/common/collect/MapMaker$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/CustomConcurrentHashMap$Internals",
            "<TK;TV;",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;>;TK;I",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method abstract referenceValue(Lcom/google/common/collect/MapMaker$ReferenceEntry;Ljava/lang/Object;)Lcom/google/common/collect/MapMaker$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/MapMaker$ReferenceEntry",
            "<TK;TV;>;TV;)",
            "Lcom/google/common/collect/MapMaker$ValueReference",
            "<TK;TV;>;"
        }
    .end annotation
.end method
