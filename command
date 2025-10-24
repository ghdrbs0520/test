# 벽통과
/execute as @e[tag=엔티티] ~~~~~~~ # 대충 플레이어 바라봄
tp @e[tag=엔티티] ~ ~ ~ ~ ~0.00001 # 바라보는 방향으로 이동
execute as @e[tag=엔티티] if entity @p run "/function test:test" # 이벤트 발생

# 트랩
execute as @p[x=1,y=10,z=1,dx=5,dy=10,dz=5] run "/function test:test" # 이벤트 발생
execute as @e[tag=엔티티] if entity @p[distance=2.5] run "/function test:test" # 이벤트 발생

ㄴ /summon ~~~~~~~~~~~~~
   /playsound ~~~~~~~~~~
   /summon lightningbalt?9 ~ ~ ~ "Silent:1b" # 소리없는 번개 가능?

# 시선 트리거
1. 데이터 더미 소환
/execute at 플레이어 run summon 좌표
2. 시선 좌표 복사
/execute at 플레이어 as 더미 run tp @s ~ ~ ~
3. 시선 좌표값 데이터 저장
/data ~~~~~~~~~~
4. 저장된 값을 변수로 사용하여 함수 실행
/function {변수값:좌표값}
5. 해당 조건 값이 특정 조건 도달시 이벤트 발생 (해당 플레이어가 특정 엔티티를 바라보는 기준으로 좌표값이 조건으로 충족되는 방법)
/execute if entity @p[x_rotation={$변수값},y_rotation={$변수값}] run function ~~~~~
6. 또는 특정 방향을 바라보면 이벤트 발생
/execute if entity @a[x_rotation=90..,y_rotation=-90..180] run 
7. 





 ## test 명령어 ##
execute as @a at @s run execute facing entity @e[type=armor_stand,limit=1,sort=nearest] feet if entity @e[type=armor_stand,distance=..5] run summon tnt ~ ~ ~ {Fuse:0}

execute as @a at @s run execute if entity @e[type=armor_stand,limit=1,sort=nearest,distance=..20] if entity @s[nbt={Rotation:[x,yf]}] run tellraw @s {"text":"너는 아머스탠드를 정확히 바라보고 있어!"}

# 예시 함수 (raycast.mcfunction)
execute as @a at @s anchored eyes positioned ^ ^ ^0.5 if entity @e[type=armor_stand,distance=..0.5] run <이벤트 실행>
execute as @a at @s anchored eyes positioned ^ ^ ^1.0 if entity @e[type=armor_stand,distance=..0.5] run <이벤트 실행>
# ... 0.5씩 증가시키면서 반복






