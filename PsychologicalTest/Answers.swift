//
//  Answer.swift
//  PsychologicalTest
//
//  Created by 김진주 on 2023/05/10.
//

import Foundation

struct Answers: Hashable {
    let answer: String
    let imageName: String
    let description: String
    
}

extension Answers {
    static let list = [
        Answers(answer: "수명이 끝나 소멸했다.",
                imageName: "moon.haze.fill",
                description: "당신은 인생에 큰 성공도 없고 큰 어려움도 없는 평범하고 충실한 인생을 보냅니다. 말년에는 귀여운 손자들에게 둘러쌓여 평온한 날을 보내게 될 것입니다. 평범하지만 재미없는 인생이라고는 할 수 없죠! 평범한 것이야말로 가장 행복한 것이라고 하잖아요."
              ),
        Answers(answer: "잠깐 구름에 감춰졌다.",
                imageName: "cloud.fill",
                description: "당신은 세심한 일에도 신경을 많이 쓰는 편입니다. 머리회전이 빨라서 계산적인 사람이라고 오해를 받기도 하지만 당신이 가지고있는 진실성으로 오해를. 풀면 주위는 당신의 매력에 끌리게 됩니다. 항상 인복이 많아 즐거운 인생을 보낼 수 있을 것입니다."
              ),
        Answers(answer: "다른 별과 충돌하여 부서졌다.",
                imageName: "bolt.fill",
                description: "당신은 평소엔 눈에 잘 띄지 않지만 어려운 일이 닥쳤을 때 빛을 발하는 사람입니다. 자신보다 주변 사람들이 어려울 때 물심양면으로 힘을 써 도움을 주곤 하는데요. 그럴 때만 사람들에게 영웅대접을 받고 금방 잊혀집니다. 무슨 일이 일어날 때마다 도움받던 사람들이 당신에게 기대를 하게 됩니다."
              ),
        Answers(answer: "그동안 내가 봤던 별은 환상이었다.",
                imageName: "sun.and.horizon.fill",
                description: "당신은 상식을 벗어나는 것을 좋아하는 타입으로 평범한 것을 싫어하며 독단적인 세계를 살아가는 아티스트, 화려한 스포트라이트를 받는 직업을 좋아합니다. 불가능하진 않지만 실현하기 위해서는 주변 사람들의 이해와 도움이 필요하며 현실을 바라 보고 희노애락에 좌우되지 않고 자신을 지켜가야 합니다."
              ),
    ]
}
