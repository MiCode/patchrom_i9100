.class public Lcom/android/server/pm/LibQmg;
.super Ljava/lang/Object;
.source "LibQmg.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native qmgClose(I)I
.end method

.method public static native qmgGetHeight(I)I
.end method

.method public static native qmgGetWidth(I)I
.end method

.method public static native qmgLoadFrame(I[I)I
.end method

.method public static native qmgOpen(Ljava/lang/String;)I
.end method
