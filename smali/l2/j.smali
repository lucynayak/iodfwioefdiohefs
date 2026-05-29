.class public final Ll2/j;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public static getAll()[J
    .registers 1
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "getAll"
    .end annotation

    invoke-static {}, Ldev/virus/variable/launcher/api/NativeLevel;->getAllPlayers()[J

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Entity"

    return-object v0
.end method
