.class public final enum Landroid/app/enterprise/WifiAdminProfile$PolicyState;
.super Ljava/lang/Enum;
.source "WifiAdminProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/WifiAdminProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PolicyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/enterprise/WifiAdminProfile$PolicyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/enterprise/WifiAdminProfile$PolicyState;

.field public static final enum DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

.field public static final enum FALSE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

.field public static final enum TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    const-string v1, "FALSE"

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->FALSE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    new-instance v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    const-string v1, "TRUE"

    invoke-direct {v0, v1, v3}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    new-instance v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v4}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    sget-object v1, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->FALSE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->$VALUES:[Landroid/app/enterprise/WifiAdminProfile$PolicyState;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Landroid/app/enterprise/WifiAdminProfile$PolicyState;
    .locals 1
    .parameter "v"

    .prologue
    .line 97
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->FALSE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 98
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->FALSE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    .line 102
    :goto_0
    return-object v0

    .line 99
    :cond_0
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->ordinal()I

    move-result v0

    if-ne v0, p0, :cond_1

    .line 100
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    goto :goto_0

    .line 102
    :cond_1
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->DEFAULT:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile$PolicyState;
    .locals 1
    .parameter "name"

    .prologue
    .line 94
    const-class v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    return-object v0
.end method

.method public static valueOf(Z)Landroid/app/enterprise/WifiAdminProfile$PolicyState;
    .locals 1
    .parameter "v"

    .prologue
    .line 106
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    .line 107
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    .line 109
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->FALSE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    goto :goto_0
.end method

.method public static values()[Landroid/app/enterprise/WifiAdminProfile$PolicyState;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->$VALUES:[Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    invoke-virtual {v0}, [Landroid/app/enterprise/WifiAdminProfile$PolicyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    return-object v0
.end method


# virtual methods
.method public valueOf()Z
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/app/enterprise/WifiAdminProfile$PolicyState;->TRUE:Landroid/app/enterprise/WifiAdminProfile$PolicyState;

    if-ne p0, v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
