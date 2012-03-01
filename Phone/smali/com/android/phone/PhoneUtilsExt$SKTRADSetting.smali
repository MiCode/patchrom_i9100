.class public final enum Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;
.super Ljava/lang/Enum;
.source "PhoneUtilsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtilsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SKTRADSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

.field public static final enum Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

.field public static final enum Enabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

.field public static final enum OnlyOutgoingToKorea:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-instance v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    const-string v1, "Disabled"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    new-instance v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    const-string v1, "Enabled"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Enabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    new-instance v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    const-string v1, "OnlyOutgoingToKorea"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->OnlyOutgoingToKorea:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    .line 86
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Enabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->OnlyOutgoingToKorea:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->$VALUES:[Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

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
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;
    .locals 1
    .parameter

    .prologue
    .line 86
    const-class v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->$VALUES:[Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    invoke-virtual {v0}, [Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    return-object v0
.end method
