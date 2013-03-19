.class final enum Lcom/android/settings/guide/ListGuiderBase$GuideStates;
.super Ljava/lang/Enum;
.source "ListGuiderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/guide/ListGuiderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "GuideStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/guide/ListGuiderBase$GuideStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/guide/ListGuiderBase$GuideStates;

.field public static final enum OFF:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

.field public static final enum ON:Lcom/android/settings/guide/ListGuiderBase$GuideStates;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    const-string v1, "ON"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/guide/ListGuiderBase$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    .line 29
    new-instance v0, Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/guide/ListGuiderBase$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    sget-object v1, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->ON:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->OFF:Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->$VALUES:[Lcom/android/settings/guide/ListGuiderBase$GuideStates;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/guide/ListGuiderBase$GuideStates;
    .locals 1
    .parameter

    .prologue
    .line 27
    const-class v0, Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/guide/ListGuiderBase$GuideStates;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/settings/guide/ListGuiderBase$GuideStates;->$VALUES:[Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    invoke-virtual {v0}, [Lcom/android/settings/guide/ListGuiderBase$GuideStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/guide/ListGuiderBase$GuideStates;

    return-object v0
.end method
