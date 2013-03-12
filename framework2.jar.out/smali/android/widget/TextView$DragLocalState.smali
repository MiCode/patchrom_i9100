.class public Landroid/widget/TextView$DragLocalState;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DragLocalState"
.end annotation


# instance fields
.field public end:I

.field public sourceTextView:Landroid/widget/TextView;

.field public start:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;II)V
    .locals 0
    .parameter "sourceTextView"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 8299
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8300
    iput-object p1, p0, Landroid/widget/TextView$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    .line 8301
    iput p2, p0, Landroid/widget/TextView$DragLocalState;->start:I

    .line 8302
    iput p3, p0, Landroid/widget/TextView$DragLocalState;->end:I

    .line 8303
    return-void
.end method
