.class public final enum Landroid/webkit/HtmlComposerView$CursorDirection;
.super Ljava/lang/Enum;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CursorDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/webkit/HtmlComposerView$CursorDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/webkit/HtmlComposerView$CursorDirection;

.field public static final enum BACKWARD:Landroid/webkit/HtmlComposerView$CursorDirection;

.field public static final enum FORWARD:Landroid/webkit/HtmlComposerView$CursorDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5798
    new-instance v0, Landroid/webkit/HtmlComposerView$CursorDirection;

    const-string v1, "FORWARD"

    invoke-direct {v0, v1, v2}, Landroid/webkit/HtmlComposerView$CursorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/HtmlComposerView$CursorDirection;->FORWARD:Landroid/webkit/HtmlComposerView$CursorDirection;

    .line 5799
    new-instance v0, Landroid/webkit/HtmlComposerView$CursorDirection;

    const-string v1, "BACKWARD"

    invoke-direct {v0, v1, v3}, Landroid/webkit/HtmlComposerView$CursorDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/webkit/HtmlComposerView$CursorDirection;->BACKWARD:Landroid/webkit/HtmlComposerView$CursorDirection;

    .line 5797
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/webkit/HtmlComposerView$CursorDirection;

    sget-object v1, Landroid/webkit/HtmlComposerView$CursorDirection;->FORWARD:Landroid/webkit/HtmlComposerView$CursorDirection;

    aput-object v1, v0, v2

    sget-object v1, Landroid/webkit/HtmlComposerView$CursorDirection;->BACKWARD:Landroid/webkit/HtmlComposerView$CursorDirection;

    aput-object v1, v0, v3

    sput-object v0, Landroid/webkit/HtmlComposerView$CursorDirection;->$VALUES:[Landroid/webkit/HtmlComposerView$CursorDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5797
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/webkit/HtmlComposerView$CursorDirection;
    .locals 1
    .parameter "name"

    .prologue
    .line 5797
    const-class v0, Landroid/webkit/HtmlComposerView$CursorDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/webkit/HtmlComposerView$CursorDirection;

    return-object v0
.end method

.method public static values()[Landroid/webkit/HtmlComposerView$CursorDirection;
    .locals 1

    .prologue
    .line 5797
    sget-object v0, Landroid/webkit/HtmlComposerView$CursorDirection;->$VALUES:[Landroid/webkit/HtmlComposerView$CursorDirection;

    invoke-virtual {v0}, [Landroid/webkit/HtmlComposerView$CursorDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/webkit/HtmlComposerView$CursorDirection;

    return-object v0
.end method
