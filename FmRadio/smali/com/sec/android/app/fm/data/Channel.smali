.class public Lcom/sec/android/app/fm/data/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/android/app/fm/data/Channel;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public mFreqMHz:F

.field public mFreqName:Ljava/lang/String;

.field public mIsFavourite:Z

.field public mPosition:I


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .parameter "freqMHz"

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 50
    return-void
.end method

.method public constructor <init>(FLjava/lang/String;)V
    .locals 1
    .parameter "freqMHz"
    .parameter "freqName"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    .line 59
    iput-object p2, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqName:Ljava/lang/String;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/fm/data/Channel;->mPosition:I

    .line 63
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sec/android/app/fm/data/Channel;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 98
    iget v0, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    iget v1, p1, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    check-cast p1, Lcom/sec/android/app/fm/data/Channel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/fm/data/Channel;->compareTo(Lcom/sec/android/app/fm/data/Channel;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 71
    instance-of v1, p1, Lcom/sec/android/app/fm/data/Channel;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 73
    check-cast v0, Lcom/sec/android/app/fm/data/Channel;

    .line 75
    .local v0, ob:Lcom/sec/android/app/fm/data/Channel;
    iget v1, v0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    iget v2, p0, Lcom/sec/android/app/fm/data/Channel;->mFreqMHz:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 76
    const/4 v1, 0x1

    .line 79
    .end local v0           #ob:Lcom/sec/android/app/fm/data/Channel;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string v0, "\n--->Freq :### Name :### Is Fav :### Position :###<----"

    return-object v0
.end method
