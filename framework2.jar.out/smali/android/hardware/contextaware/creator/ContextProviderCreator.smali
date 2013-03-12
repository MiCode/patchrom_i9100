.class public abstract Landroid/hardware/contextaware/creator/ContextProviderCreator;
.super Ljava/lang/Object;
.source "ContextProviderCreator.java"


# static fields
.field protected static mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

.field private static mContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/ContextProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->mContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/ContextProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    sget-object v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;->mContextProviderMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method


# virtual methods
.method public abstract create(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;
.end method

.method public varargs abstract create(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;
.end method

.method public abstract existContextProvider(Ljava/lang/String;)Z
.end method
