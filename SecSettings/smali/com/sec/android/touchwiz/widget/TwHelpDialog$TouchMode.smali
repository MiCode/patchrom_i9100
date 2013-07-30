.class public final enum Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;
.super Ljava/lang/Enum;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwHelpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

.field public static final enum OPAQUE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

.field public static final enum OPAQUE_NO_MOVE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

.field public static final enum TRANSPARENT:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    const-string v1, "OPAQUE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    .line 21
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    const-string v1, "TRANSPARENT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    .line 23
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    const-string v1, "OPAQUE_NO_MOVE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->$VALUES:[Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    invoke-virtual {v0}, [Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/touchwiz/widget/TwHelpDialog$TouchMode;

    return-object v0
.end method
