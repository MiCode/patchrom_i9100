.class final Landroid/text/Selection$END;
.super Ljava/lang/Object;
.source "Selection.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Selection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "END"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/text/Selection$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 487
    invoke-direct {p0}, Landroid/text/Selection$END;-><init>()V

    return-void
.end method
