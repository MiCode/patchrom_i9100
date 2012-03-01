.class public final enum Lcom/android/phone/PhoneUtilsExt$CallType;
.super Ljava/lang/Enum;
.source "PhoneUtilsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtilsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneUtilsExt$CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneUtilsExt$CallType;

.field public static final enum DIAL_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

.field public static final enum DIAL_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

.field public static final enum INCOMING_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

.field public static final enum INCOMING_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/android/phone/PhoneUtilsExt$CallType;

    const-string v1, "DIAL_VOICE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneUtilsExt$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

    new-instance v0, Lcom/android/phone/PhoneUtilsExt$CallType;

    const-string v1, "DIAL_VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneUtilsExt$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    new-instance v0, Lcom/android/phone/PhoneUtilsExt$CallType;

    const-string v1, "INCOMING_VOICE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/PhoneUtilsExt$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

    new-instance v0, Lcom/android/phone/PhoneUtilsExt$CallType;

    const-string v1, "INCOMING_VIDEO"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/PhoneUtilsExt$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/PhoneUtilsExt$CallType;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VOICE:Lcom/android/phone/PhoneUtilsExt$CallType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->$VALUES:[Lcom/android/phone/PhoneUtilsExt$CallType;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneUtilsExt$CallType;
    .locals 1
    .parameter

    .prologue
    .line 81
    const-class v0, Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneUtilsExt$CallType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/PhoneUtilsExt$CallType;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$CallType;->$VALUES:[Lcom/android/phone/PhoneUtilsExt$CallType;

    invoke-virtual {v0}, [Lcom/android/phone/PhoneUtilsExt$CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneUtilsExt$CallType;

    return-object v0
.end method
