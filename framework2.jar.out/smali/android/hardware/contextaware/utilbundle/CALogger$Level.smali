.class public abstract enum Landroid/hardware/contextaware/utilbundle/CALogger$Level;
.super Ljava/lang/Enum;
.source "CALogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CALogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/utilbundle/CALogger$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/utilbundle/CALogger$Level;

.field public static final enum DEBUG:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

.field public static final enum ERROR:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

.field public static final enum EXCEPTION:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

.field public static final enum INFO:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

.field public static final enum TRACE:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

.field public static final enum WARN:Landroid/hardware/contextaware/utilbundle/CALogger$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level$1;

    const-string v1, "TRACE"

    invoke-direct {v0, v1, v3}, Landroid/hardware/contextaware/utilbundle/CALogger$Level$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->TRACE:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    .line 78
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level$2;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v4}, Landroid/hardware/contextaware/utilbundle/CALogger$Level$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->DEBUG:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    .line 100
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level$3;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v5}, Landroid/hardware/contextaware/utilbundle/CALogger$Level$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->INFO:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    .line 122
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level$4;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v6}, Landroid/hardware/contextaware/utilbundle/CALogger$Level$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->WARN:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    .line 144
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level$5;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v7}, Landroid/hardware/contextaware/utilbundle/CALogger$Level$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->ERROR:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    .line 166
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level$6;

    const-string v1, "EXCEPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/hardware/contextaware/utilbundle/CALogger$Level$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->EXCEPTION:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    sget-object v1, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->TRACE:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->DEBUG:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->INFO:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->WARN:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->ERROR:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->EXCEPTION:Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->$VALUES:[Landroid/hardware/contextaware/utilbundle/CALogger$Level;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/hardware/contextaware/utilbundle/CALogger$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/utilbundle/CALogger$Level;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->getCallerInfo(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCallerInfo(Z)Ljava/lang/String;
    .locals 4
    .parameter "isHyphen"

    .prologue
    .line 195
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->access$600()Z

    move-result v2

    if-nez v2, :cond_0

    .line 196
    const-string v2, ""

    .line 212
    :goto_0
    return-object v2

    .line 199
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 202
    .local v1, stackList:[Ljava/lang/StackTraceElement;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v0, callerInfo:Ljava/lang/StringBuffer;
    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 205
    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    :cond_1
    if-eqz p0, :cond_2

    .line 209
    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/utilbundle/CALogger$Level;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/utilbundle/CALogger$Level;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CALogger$Level;->$VALUES:[Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/utilbundle/CALogger$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/utilbundle/CALogger$Level;

    return-object v0
.end method


# virtual methods
.method abstract consoleLogging(Ljava/lang/String;)V
.end method

.method abstract fileLogging(Ljava/lang/String;)V
.end method
