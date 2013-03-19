.class public final enum Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
.super Ljava/lang/Enum;
.source "WifiSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/guide/WifiSettingsGuider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GuideStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field public static final enum CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field public static final enum CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field public static final enum ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field public static final enum FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field public static final enum NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field public static final enum NO_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field public static final enum SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

.field public static final enum SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 64
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    const-string v1, "SECURITY"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 65
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    const-string v1, "NO_NETWORK"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 66
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    const-string v1, "FOUND_NETWORK"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 67
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    const-string v1, "SCAN"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 68
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    const-string v1, "CONNECTED_AUTOMATICALLY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 69
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    const-string v1, "CONNECTED_SUCCESSFULLY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 70
    new-instance v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    const-string v1, "ENABLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    .line 62
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NONE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SECURITY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->NO_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->FOUND_NETWORK:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->SCAN:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_AUTOMATICALLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->CONNECTED_SUCCESSFULLY:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->ENABLE:Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->$VALUES:[Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    .locals 1
    .parameter

    .prologue
    .line 62
    const-class v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->$VALUES:[Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    invoke-virtual {v0}, [Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/guide/WifiSettingsGuider$GuideStates;

    return-object v0
.end method
