.class Landroid/webkit/WebViewCore$TextInputData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextInputData"
.end annotation


# instance fields
.field mEnd:I

.field mSelectTextPtr:I

.field mStart:I

.field mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "selectTextPtr"
    .parameter "text"

    .prologue
    .line 1116
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1117
    iput p1, p0, Landroid/webkit/WebViewCore$TextInputData;->mStart:I

    .line 1118
    iput p2, p0, Landroid/webkit/WebViewCore$TextInputData;->mEnd:I

    .line 1119
    iput-object p4, p0, Landroid/webkit/WebViewCore$TextInputData;->mText:Ljava/lang/String;

    .line 1120
    iput p3, p0, Landroid/webkit/WebViewCore$TextInputData;->mSelectTextPtr:I

    .line 1121
    return-void
.end method
