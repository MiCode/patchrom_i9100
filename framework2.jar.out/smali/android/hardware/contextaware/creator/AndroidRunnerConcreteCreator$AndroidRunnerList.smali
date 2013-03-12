.class enum Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;
.super Ljava/lang/Enum;
.source "AndroidRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400a
    name = "AndroidRunnerList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum RAW_GPS:Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

.field public static final enum RAW_SENSOR:Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList$1;

    const-string v1, "RAW_GPS"

    sget-object v2, Landroid/hardware/contextaware/ContextList;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_GPS:Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

    .line 56
    new-instance v0, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList$2;

    const-string v1, "RAW_SENSOR"

    sget-object v2, Landroid/hardware/contextaware/ContextList;->ANDROID_RUNNER_RAW_SENSOR:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_SENSOR:Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

    sget-object v1, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_GPS:Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;->RAW_SENSOR:Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;->$VALUES:[Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

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
    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput-object p3, p0, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;->name:Ljava/lang/String;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;
    .locals 1
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;->$VALUES:[Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;

    return-object v0
.end method


# virtual methods
.method protected getRunnerObj()Landroid/hardware/contextaware/ContextProvider;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method protected varargs getRunnerObj([Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;
    .locals 1
    .parameter "property"

    .prologue
    .line 111
    array-length v0, p1

    if-lez v0, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator$AndroidRunnerList;->getRunnerObj()Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    goto :goto_0
.end method
