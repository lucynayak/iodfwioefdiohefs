.class public final synthetic Lorg/mozilla/javascript/optimizer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Lorg/mozilla/javascript/Script;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Lorg/mozilla/javascript/Script;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/a;->b:[Ljava/lang/String;

    iput-object p2, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/Script;

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lorg/mozilla/javascript/optimizer/a;->b:[Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/optimizer/a;->c:Lorg/mozilla/javascript/Script;

    invoke-static {v0, v1, p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->a([Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
