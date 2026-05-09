.class public final Ll2/i;
.super Lorg/mozilla/javascript/ScriptableObject;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/mozilla/javascript/ScriptableObject;-><init>()V

    return-void
.end method

.method public static setAbilityBoolean(Ljava/lang/String;Z)V
    .registers 2
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setBoolean"
    .end annotation

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeAbilities;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setAbilityFloat(Ljava/lang/String;D)V
    .registers 3
    .annotation runtime Lorg/mozilla/javascript/annotations/JSStaticFunction;
        value = "setFloat"
    .end annotation

    double-to-float p1, p1

    invoke-static {p0, p1}, Ldev/virus/variable/launcher/api/NativeAbilities;->setFloat(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .registers 2

    const-string v0, "Abilities"

    return-object v0
.end method
