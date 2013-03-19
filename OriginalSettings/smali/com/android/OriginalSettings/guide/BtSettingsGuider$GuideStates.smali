.class public final enum Lcom/android/settings/guide/BtSettingsGuider$GuideStates;
.super Ljava/lang/Enum;
.source "BtSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/guide/BtSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GuideStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/guide/BtSettingsGuider$GuideStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum FOUND:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

.field public static final enum SCANNING:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 54
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string v1, "SCAN"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 56
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string v1, "SCANNING"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 58
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string v1, "FOUND"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 60
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 62
    new-instance v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    const-string v1, "ENABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->SCANNING:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->FOUND:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->CONNECTED:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->$VALUES:[Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/guide/BtSettingsGuider$GuideStates;
    .locals 1
    .parameter

    .prologue
    .line 50
    const-class v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/guide/BtSettingsGuider$GuideStates;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->$VALUES:[Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    invoke-virtual {v0}, [Lcom/android/settings/guide/BtSettingsGuider$GuideStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/guide/BtSettingsGuider$GuideStates;

    return-object v0
.end method
