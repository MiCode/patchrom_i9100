.class public final enum Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;
.super Ljava/lang/Enum;
.source "ProcessInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/dmc/ux/db/ProcessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GSFileTaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

.field public static final enum RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

.field public static final enum SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    const-string v1, "SEND_TASK"

    invoke-direct {v0, v1, v2}, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    .line 29
    new-instance v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    const-string v1, "RECV_TASK"

    invoke-direct {v0, v1, v3}, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    sget-object v1, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->SEND_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->RECV_TASK:Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->ENUM$VALUES:[Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;->ENUM$VALUES:[Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/dmc/ux/db/ProcessInfo$GSFileTaskType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
