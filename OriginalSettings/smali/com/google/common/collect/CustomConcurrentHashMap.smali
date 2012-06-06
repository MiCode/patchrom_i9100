.class final Lcom/google/common/collect/CustomConcurrentHashMap;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CustomConcurrentHashMap$ComputingImpl;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Impl;,
        Lcom/google/common/collect/CustomConcurrentHashMap$ComputingStrategy;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Internals;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Strategy;,
        Lcom/google/common/collect/CustomConcurrentHashMap$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 130
    invoke-static {p0}, Lcom/google/common/collect/CustomConcurrentHashMap;->rehash(I)I

    move-result v0

    return v0
.end method

.method private static rehash(I)I
    .locals 2
    .parameter "h"

    .prologue
    .line 527
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 528
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 529
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 530
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 531
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 532
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method
