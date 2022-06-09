import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/search.dart';
import '../components/single_agent_card.dart';
import '../constants/color.dart';
import '../provider/agents.dart';

class AgentsScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Discover Agents Around!',
            style: TextStyle(
              color: kFont,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'The Bests of them all',
            style: TextStyle(
              color: kFont,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SearchContainer(),
          Expanded(
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(
                width: double.infinity,
                height: double.infinity,
              ),
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: Provider.of<AgentData>(context)
                    .agents
                    .map(
                      (agent) => SingleAgentCard(
                        id: agent.id,
                        name: agent.name,
                        imgUrl: agent.imgUrl,
                        mobile: agent.mobile,
                     
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
