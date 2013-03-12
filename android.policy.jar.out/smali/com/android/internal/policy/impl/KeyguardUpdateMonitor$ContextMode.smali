.class public final enum Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;
.super Ljava/lang/Enum;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

.field public static final enum CONTEXT_MODE_CARCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

.field public static final enum CONTEXT_MODE_DESKCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

.field public static final enum CONTEXT_MODE_EARPHONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

.field public static final enum CONTEXT_MODE_NONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

.field public static final enum CONTEXT_MODE_SPEN:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    const-string v1, "CONTEXT_MODE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_NONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 175
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    const-string v1, "CONTEXT_MODE_SPEN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_SPEN:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 176
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    const-string v1, "CONTEXT_MODE_EARPHONE"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_EARPHONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 177
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    const-string v1, "CONTEXT_MODE_CARCRADLE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_CARCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 178
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    const-string v1, "CONTEXT_MODE_DESKCRADLE"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_DESKCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    .line 173
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_NONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_SPEN:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_EARPHONE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_CARCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->CONTEXT_MODE_DESKCRADLE:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->$VALUES:[Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

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
    .line 173
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 173
    const-class v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->$VALUES:[Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$ContextMode;

    return-object v0
.end method
