.class public final enum Lcom/sec/android/app/sysscope/service/ResultCode;
.super Ljava/lang/Enum;
.source "ResultCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/sysscope/service/ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADB_RUNNING_AS_ROOT:Lcom/sec/android/app/sysscope/service/ResultCode;

.field public static final enum DANGEROUS_FILE_DETECTED:Lcom/sec/android/app/sysscope/service/ResultCode;

.field private static final synthetic ENUM$VALUES:[Lcom/sec/android/app/sysscope/service/ResultCode;

.field public static final enum NOT_OFFICIAL_BINARY:Lcom/sec/android/app/sysscope/service/ResultCode;

.field public static final enum OK:Lcom/sec/android/app/sysscope/service/ResultCode;

.field public static final enum PARTITION_TAMPERED:Lcom/sec/android/app/sysscope/service/ResultCode;

.field public static final enum ROOT_PROCESS_FOUND:Lcom/sec/android/app/sysscope/service/ResultCode;


# instance fields
.field private mCode:I

.field private mDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/android/app/sysscope/service/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/ResultCode;->OK:Lcom/sec/android/app/sysscope/service/ResultCode;

    .line 7
    new-instance v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    const-string v1, "ADB_RUNNING_AS_ROOT"

    .line 10
    const v2, 0x10001

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/android/app/sysscope/service/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/ResultCode;->ADB_RUNNING_AS_ROOT:Lcom/sec/android/app/sysscope/service/ResultCode;

    .line 14
    new-instance v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    const-string v1, "PARTITION_TAMPERED"

    const v2, 0x20001

    invoke-direct {v0, v1, v6, v2}, Lcom/sec/android/app/sysscope/service/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/ResultCode;->PARTITION_TAMPERED:Lcom/sec/android/app/sysscope/service/ResultCode;

    .line 18
    new-instance v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    const-string v1, "ROOT_PROCESS_FOUND"

    const/16 v2, 0x3001

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/android/app/sysscope/service/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/ResultCode;->ROOT_PROCESS_FOUND:Lcom/sec/android/app/sysscope/service/ResultCode;

    .line 22
    new-instance v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    const-string v1, "DANGEROUS_FILE_DETECTED"

    const v2, 0x40001

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/android/app/sysscope/service/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/ResultCode;->DANGEROUS_FILE_DETECTED:Lcom/sec/android/app/sysscope/service/ResultCode;

    .line 26
    new-instance v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    const-string v1, "NOT_OFFICIAL_BINARY"

    const/4 v2, 0x5

    const v3, 0x50001

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sysscope/service/ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/ResultCode;->NOT_OFFICIAL_BINARY:Lcom/sec/android/app/sysscope/service/ResultCode;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sec/android/app/sysscope/service/ResultCode;

    sget-object v1, Lcom/sec/android/app/sysscope/service/ResultCode;->OK:Lcom/sec/android/app/sysscope/service/ResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/sysscope/service/ResultCode;->ADB_RUNNING_AS_ROOT:Lcom/sec/android/app/sysscope/service/ResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/app/sysscope/service/ResultCode;->PARTITION_TAMPERED:Lcom/sec/android/app/sysscope/service/ResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/app/sysscope/service/ResultCode;->ROOT_PROCESS_FOUND:Lcom/sec/android/app/sysscope/service/ResultCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/android/app/sysscope/service/ResultCode;->DANGEROUS_FILE_DETECTED:Lcom/sec/android/app/sysscope/service/ResultCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/app/sysscope/service/ResultCode;->NOT_OFFICIAL_BINARY:Lcom/sec/android/app/sysscope/service/ResultCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/sysscope/service/ResultCode;->ENUM$VALUES:[Lcom/sec/android/app/sysscope/service/ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter
    .parameter "code"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/ResultCode;->mDescription:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/sec/android/app/sysscope/service/ResultCode;->mCode:I

    .line 33
    return-void
.end method

.method public static fromInt(I)Lcom/sec/android/app/sysscope/service/ResultCode;
    .locals 5
    .parameter "value"

    .prologue
    .line 53
    invoke-static {}, Lcom/sec/android/app/sysscope/service/ResultCode;->values()[Lcom/sec/android/app/sysscope/service/ResultCode;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 58
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 53
    :cond_1
    aget-object v0, v2, v1

    .line 54
    .local v0, r:Lcom/sec/android/app/sysscope/service/ResultCode;
    iget v4, v0, Lcom/sec/android/app/sysscope/service/ResultCode;->mCode:I

    if-eq v4, p0, :cond_0

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sysscope/service/ResultCode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/service/ResultCode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/sysscope/service/ResultCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sec/android/app/sysscope/service/ResultCode;->ENUM$VALUES:[Lcom/sec/android/app/sysscope/service/ResultCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/app/sysscope/service/ResultCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/ResultCode;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/ResultCode;->mDescription:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public value()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/sec/android/app/sysscope/service/ResultCode;->mCode:I

    return v0
.end method
