.class abstract enum Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;
.super Ljava/lang/Enum;
.source "AggregatorConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/AggregatorConcreteCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "AggregatorList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

.field public static final enum LOCATION:Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

.field public static final enum MOVING:Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList$1;

    const-string v1, "LOCATION"

    sget-object v2, Landroid/hardware/contextaware/ContextList;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->LOCATION:Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    .line 74
    new-instance v0, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList$2;

    const-string v1, "MOVING"

    sget-object v2, Landroid/hardware/contextaware/ContextList;->AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->MOVING:Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    sget-object v1, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->LOCATION:Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->MOVING:Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->$VALUES:[Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput-object p3, p0, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->name:Ljava/lang/String;

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-static {p0, p1}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->getRunnerObj(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    return-object v0
.end method

.method private static varargs getRunnerObj(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;
    .locals 4
    .parameter "runnerName"
    .parameter "property"

    .prologue
    .line 121
    const/4 v2, 0x0

    .line 123
    .local v2, obj:Landroid/hardware/contextaware/ContextProvider;
    invoke-static {}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator;->access$200()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;

    .line 124
    .local v0, i:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_0

    .line 133
    .end local v0           #i:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    :cond_1
    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    const-class v0, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->$VALUES:[Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    return-object v0
.end method


# virtual methods
.method protected abstract getAggregatorObj()Landroid/hardware/contextaware/ContextProvider;
.end method

.method abstract makeListForContextCreation()Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/ContextProvider;",
            ">;"
        }
    .end annotation
.end method
