.class Landroid/webkit/WebViewCore$TextSelectionData;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextSelectionData"
.end annotation


# static fields
.field static final REASON_ACCESSIBILITY_INJECTOR:I = 0x1

.field static final REASON_SELECT_WORD:I = 0x2

.field static final REASON_UNKNOWN:I


# instance fields
.field mEnd:I

.field mSelectTextPtr:I

.field mSelectionReason:I

.field mStart:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "selectTextPtr"

    .prologue
    .line 1132
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1140
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectionReason:I

    .line 1133
    iput p1, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    .line 1134
    iput p2, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    .line 1135
    iput p3, p0, Landroid/webkit/WebViewCore$TextSelectionData;->mSelectTextPtr:I

    .line 1136
    return-void
.end method
