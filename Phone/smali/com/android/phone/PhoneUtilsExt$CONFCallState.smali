.class public final enum Lcom/android/phone/PhoneUtilsExt$CONFCallState;
.super Ljava/lang/Enum;
.source "PhoneUtilsExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtilsExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONFCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/PhoneUtilsExt$CONFCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/PhoneUtilsExt$CONFCallState;

.field public static final enum PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

.field public static final enum SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    new-instance v0, Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    const-string v1, "PARTY_CALL"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneUtilsExt$CONFCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    new-instance v0, Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    const-string v1, "SWAP_CALL"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/PhoneUtilsExt$CONFCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->$VALUES:[Lcom/android/phone/PhoneUtilsExt$CONFCallState;

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
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/PhoneUtilsExt$CONFCallState;
    .locals 1
    .parameter

    .prologue
    .line 148
    const-class v0, Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/PhoneUtilsExt$CONFCallState;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->$VALUES:[Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    invoke-virtual {v0}, [Lcom/android/phone/PhoneUtilsExt$CONFCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    return-object v0
.end method
