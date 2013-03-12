.class Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
.super Ljava/lang/Object;
.source "HtmlComposerInputConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerInputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpanDataInfo"
.end annotation


# instance fields
.field endOffset:I

.field highLightColor:I

.field isHighlightColor:Z

.field startOffset:I

.field final synthetic this$0:Landroid/webkit/HtmlComposerInputConnection;

.field underlineColor:I

.field underlineThickness:F


# direct methods
.method constructor <init>(Landroid/webkit/HtmlComposerInputConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->this$0:Landroid/webkit/HtmlComposerInputConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
