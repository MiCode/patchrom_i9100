.class public Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;
.super Ljava/lang/Object;
.source "MultiWindowReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiWindowReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Gravity"
.end annotation


# static fields
.field public static ARRANGE_BOTTOM_UPPER_SIP:I

.field public static ARRANGE_CENTER_UPPER_SIP:I

.field public static ARRANGE_FULL_UPPER_SIP:I

.field static FIELD_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 124
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ARRANGE_CENTER_UPPER_SIP"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "ARRANGE_FULL_UPPER_SIP"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "ARRANGE_BOTTOM_UPPER_SIP"

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->FIELD_NAMES:[Ljava/lang/String;

    .line 131
    sget-object v4, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->FIELD_NAMES:[Ljava/lang/String;

    array-length v0, v4

    .line 132
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 134
    :try_start_0
    const-class v4, Landroid/view/Gravity;

    sget-object v5, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 135
    .local v3, src:Ljava/lang/reflect/Field;
    const-class v4, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;

    sget-object v5, Lcom/android/internal/policy/impl/MultiWindowReflector$Gravity;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 136
    .local v1, dst:Ljava/lang/reflect/Field;
    invoke-virtual {v3, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v1, v1, v4}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v1           #dst:Ljava/lang/reflect/Field;
    .end local v3           #src:Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void

    .line 139
    :catch_0
    move-exception v4

    goto :goto_1

    .line 138
    :catch_1
    move-exception v4

    goto :goto_1

    .line 137
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
